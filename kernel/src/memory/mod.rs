use alloc::vec::Vec;
use bootloader_api::info::MemoryRegions;
use spin::Mutex;
use x86_64::structures::paging::{
    Mapper, OffsetPageTable, Page, PageTableFlags, PhysFrame, Size4KiB,
};
use x86_64::{PhysAddr, VirtAddr};

pub mod frame_allocator;
pub mod paging;

use frame_allocator::BitmapFrameAllocator;

/// Global frame allocator — the only way to get physical frames
static FRAME_ALLOCATOR: Mutex<Option<BitmapFrameAllocator>> = Mutex::new(None);

/// Task stacks queued for deferred unmapping. Drop runs while still on the dying
/// task's stack, so we enqueue here and do the real unmap next time alloc_task_stack runs.
static STACKS_TO_FREE: Mutex<Vec<u64>> = Mutex::new(Vec::new());

/// Global kernel page table
static KERNEL_MAPPER: Mutex<Option<OffsetPageTable<'static>>> = Mutex::new(None);

/// The physical memory offset used by the bootloader's identity mapping
static mut PHYS_MEM_OFFSET: u64 = 0;

/// Initialize the memory subsystem. Call once at boot, after GDT and IDT.
///
/// Sets up the frame allocator (bitmap over all usable RAM) and
/// the kernel page table mapper.
pub fn init(phys_mem_offset: VirtAddr, memory_map: &'static MemoryRegions) {
    unsafe {
        PHYS_MEM_OFFSET = phys_mem_offset.as_u64();
    }

    // 1. Set up the kernel page table mapper
    let mapper = unsafe { paging::init_mapper(phys_mem_offset) };
    *KERNEL_MAPPER.lock() = Some(mapper);

    // 2. Set up the bitmap frame allocator from the bootloader memory map
    let allocator = unsafe { BitmapFrameAllocator::init(memory_map, phys_mem_offset.as_u64()) };
    *FRAME_ALLOCATOR.lock() = Some(allocator);
}

/// Allocate `count` contiguous virtual pages backed by physical frames.
/// Returns the starting virtual address, or None if allocation fails.
pub fn allocate_pages(start: VirtAddr, count: usize, flags: PageTableFlags) -> Option<VirtAddr> {
    let mut mapper = KERNEL_MAPPER.lock();
    let mut allocator = FRAME_ALLOCATOR.lock();

    let mapper = mapper.as_mut()?;
    let allocator = allocator.as_mut()?;

    for i in 0..count {
        let page: Page<Size4KiB> = Page::containing_address(start + (i as u64) * 4096);
        let frame = allocator.allocate_frame()?;

        unsafe {
            mapper.map_to(page, frame, flags, allocator).ok()?.flush();
        }
    }

    Some(start)
}

/// Unmap `count` pages starting at `start` and free their physical frames.
pub fn deallocate_pages(start: VirtAddr, count: usize) {
    let mut mapper = KERNEL_MAPPER.lock();
    let mut allocator = FRAME_ALLOCATOR.lock();

    let mapper = match mapper.as_mut() {
        Some(m) => m,
        None => return,
    };
    let allocator = match allocator.as_mut() {
        Some(a) => a,
        None => return,
    };

    for i in 0..count {
        let page: Page<Size4KiB> = Page::containing_address(start + (i as u64) * 4096);

        if let Ok((frame, flush)) = mapper.unmap(page) {
            flush.flush();
            allocator.deallocate_frame(frame);
        }
    }
}

/// Allocate a single physical frame. Useful when you need to back
/// something manually (e.g. creating a new page table for a process).
pub fn allocate_frame() -> Option<PhysFrame<Size4KiB>> {
    FRAME_ALLOCATOR.lock().as_mut()?.allocate_frame()
}

/// Free a single physical frame.
pub fn deallocate_frame(frame: PhysFrame<Size4KiB>) {
    if let Some(alloc) = FRAME_ALLOCATOR.lock().as_mut() {
        alloc.deallocate_frame(frame);
    }
}

/// Map a single page in the kernel address space with given flags.
pub fn map_page(
    page: Page<Size4KiB>,
    frame: PhysFrame<Size4KiB>,
    flags: PageTableFlags,
) -> Result<(), &'static str> {
    let mut mapper = KERNEL_MAPPER.lock();
    let mut allocator = FRAME_ALLOCATOR.lock();

    let mapper = mapper.as_mut().ok_or("mapper not initialized")?;
    let allocator = allocator
        .as_mut()
        .ok_or("frame allocator not initialized")?;

    unsafe {
        mapper
            .map_to(page, frame, flags, allocator)
            .map_err(|_| "mapping failed")?
            .flush();
    }

    Ok(())
}

/// Unmap a single page and return the freed frame.
pub fn unmap_page(page: Page<Size4KiB>) -> Result<PhysFrame<Size4KiB>, &'static str> {
    let mut mapper = KERNEL_MAPPER.lock();
    let mapper = mapper.as_mut().ok_or("mapper not initialized")?;

    let (frame, flush) = mapper.unmap(page).map_err(|_| "unmap failed")?;
    flush.flush();
    Ok(frame)
}

/// Translate a physical address to a virtual address using the offset mapping.
pub fn phys_to_virt(phys: PhysAddr) -> VirtAddr {
    VirtAddr::new(phys.as_u64() + unsafe { PHYS_MEM_OFFSET })
}

pub const TASK_STACK_REGION: u64 = 0xFFFF_A000_0000_0000;
pub const TASK_SLOT_SIZE: u64 = 3 * 4096;

pub fn task_stack_slot(task_id: u64) -> VirtAddr {
    VirtAddr::new(TASK_STACK_REGION + task_id * TASK_SLOT_SIZE)
}

/// Allocates pages 1 and 2 of the slot as PRESENT | WRITABLE, leaves page 0 (the guard)
/// unmapped. Returns the top of the stack (slot_base + TASK_SLOT_SIZE).
pub fn alloc_task_stack(task_id: u64) -> Option<VirtAddr> {
    // Drain stacks queued by dead tasks. Safe here: we're not on any of those stacks.
    let ids: Vec<u64> = core::mem::take(&mut *STACKS_TO_FREE.lock());
    for id in ids {
        let base = task_stack_slot(id);
        deallocate_pages(base + 4096u64, 2);
    }

    let slot_base = task_stack_slot(task_id);
    allocate_pages(
        slot_base + 4096u64,
        2,
        PageTableFlags::PRESENT | PageTableFlags::WRITABLE,
    )?;
    Some(slot_base + TASK_SLOT_SIZE)
}

/// Enqueues the task's stack for deferred unmapping. The actual unmap happens the next
/// time alloc_task_stack runs, after we have switched off the dying task's stack.
pub fn free_task_stack(task_id: u64) {
    STACKS_TO_FREE.lock().push(task_id);
}
