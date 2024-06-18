use super::{align_up, Locked};
use core::{
    alloc::{GlobalAlloc, Layout}, mem, ptr, usize
};

struct node {
    size: usize,
    next: Option<&'static mut node>,
}

pub struct LinkedListAllocator {
    head: node,
}

impl LinkedListAllocator {
    pub const fn new() -> Self {
        Self { head: node::new(0) }
    }

    pub unsafe fn init(&mut self, heap_start: usize, heap_size: usize) {
        self.add_free_region(heap_start, heap_size)
    }

    unsafe fn add_free_region(&mut self, addr: usize, size: usize) {
        assert_eq!(align_up(addr, mem::align_of::<node>()), addr);
        assert!(size >= mem::size_of::<node>());

        // create a new list node and append it at the start of the list
        let mut node = node::new(size);
        node.next = self.head.next.take();
        let node_ptr = addr as *mut node;
        node_ptr.write(node);
        self.head.next = Some(&mut *node_ptr)
    }

    fn find_region(&mut self, size: usize, align: usize) -> Option<(&'static mut node, usize)> {
        // reference to current list node, updated for each iteration
        let mut current = &mut self.head;
        // look for a large enough memory region in linked list
        while let Some(ref mut region) = current.next {
            if let Ok(alloc_start) = Self::alloc_from_region(&region, size, align) {
                // region suitable for allocation -> remove node from list
                let next = region.next.take();
                let ret = Some((current.next.take().unwrap(), alloc_start));
                current.next = next;
                return ret;
            } else {
                // region not suitable -> continue with next region
                current = current.next.as_mut().unwrap();
            }
        }

        // no suitable region found
        None
    }

    fn alloc_from_region(region: &node, size: usize, align: usize) -> Result<usize, ()> {
        let alloc_start = align_up(region.start_addr(), align);

        let alloc_end = alloc_start.checked_add(size).ok_or(())?;

        if alloc_end > region.end_addr() {
            return Err(());
        }

        let excess_size = region.end_addr() - alloc_start;

        if excess_size > 0 && excess_size < mem::size_of::<node>() {
            return Err(());
        }

        Ok(alloc_start)
    }

    fn size_align(layout: Layout) -> (usize, usize) {
        let layout = layout
            .align_to(mem::align_of::<node>())
            .expect("adjusting alignment failed")
            .pad_to_align();
        let size = layout.size().max(mem::size_of::<node>());
        (size, layout.align())
    }
}

impl node {
    const fn new(size: usize) -> Self {
        node { size, next: None }
    }

    fn start_addr(&self) -> usize {
        self as *const Self as usize
    }

    fn end_addr(&self) -> usize {
        self.start_addr() + self.size
    }
}

unsafe impl GlobalAlloc for Locked<LinkedListAllocator> {
    unsafe fn alloc(&self, layout: Layout) -> *mut u8 {
        // perform layout adjustments
        let (size, align) = LinkedListAllocator::size_align(layout);
        let mut allocator = self.lock();

        if let Some((region, alloc_start)) = allocator.find_region(size, align) {
            let alloc_end = alloc_start.checked_add(size).expect("overflow");
            let excess_size = region.end_addr() - alloc_end;
            if excess_size > 0 {
                allocator.add_free_region(alloc_end, excess_size);
            }
            alloc_start as *mut u8
        } else {
            ptr::null_mut()
        }
    }

    unsafe fn dealloc(&self, ptr: *mut u8, layout: Layout) {
        // perform layout adjustments
        let (size, _) = LinkedListAllocator::size_align(layout);

        self.lock().add_free_region(ptr as usize, size)
    }
}
