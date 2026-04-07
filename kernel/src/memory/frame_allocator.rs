use bootloader_api::info::{MemoryRegionKind, MemoryRegions};
use x86_64::structures::paging::{FrameAllocator, PhysFrame, Size4KiB};
use x86_64::PhysAddr;

const FRAME_SIZE: u64 = 4096;

/// A bitmap-based physical frame allocator.
///
/// Each bit represents one 4KiB frame:
///   0 = free
///   1 = in use
///
/// The bitmap itself lives in a usable memory region and is
/// accessed through the bootloader's physical memory mapping.
pub struct BitmapFrameAllocator {
    /// Pointer to the bitmap (accessed via phys_mem_offset mapping)
    bitmap: &'static mut [u8],
    /// Total number of frames tracked
    total_frames: usize,
    /// Offset hint: skip scanning frames before this index
    /// (speeds up repeated allocations)
    next_free: usize,
}

impl BitmapFrameAllocator {
    /// Initialize the allocator from the bootloader memory map.
    ///
    /// # Safety
    /// - `phys_mem_offset` must correctly map all physical memory
    /// - Must be called exactly once
    pub unsafe fn init(memory_map: &'static MemoryRegions, phys_mem_offset: u64) -> Self {
        // 1. Find the highest physical address to know how many frames we track
        let max_addr = memory_map
            .iter()
            .map(|region| region.end)
            .max()
            .unwrap_or(0);

        let total_frames = (max_addr / FRAME_SIZE) as usize;
        let bitmap_size = (total_frames + 7) / 8; // round up to whole bytes

        // 2. Find a usable region large enough to hold the bitmap
        let bitmap_phys_addr = memory_map
            .iter()
            .filter(|r| r.kind == MemoryRegionKind::Usable)
            .find(|r| {
                let size = r.end - r.start;
                size as usize >= bitmap_size
            })
            .map(|r| r.start)
            .expect("no usable memory region large enough for frame bitmap");

        // 3. Access the bitmap through the physical memory mapping
        let bitmap_virt_addr = (bitmap_phys_addr + phys_mem_offset) as *mut u8;
        let bitmap = core::slice::from_raw_parts_mut(bitmap_virt_addr, bitmap_size);

        // 4. Mark ALL frames as used (1)
        for byte in bitmap.iter_mut() {
            *byte = 0xFF;
        }

        // 5. Walk the memory map, mark Usable frames as free (0)
        for region in memory_map.iter() {
            if region.kind != MemoryRegionKind::Usable {
                continue;
            }

            let start_frame = region.start / FRAME_SIZE;
            let end_frame = region.end / FRAME_SIZE;

            for frame_idx in start_frame..end_frame {
                let byte_idx = (frame_idx / 8) as usize;
                let bit_idx = (frame_idx % 8) as usize;
                if byte_idx < bitmap.len() {
                    bitmap[byte_idx] &= !(1 << bit_idx); // clear bit = free
                }
            }
        }

        // 6. Mark the bitmap's own frames as used so we don't overwrite ourselves
        let bitmap_start_frame = bitmap_phys_addr / FRAME_SIZE;
        let bitmap_frame_count = ((bitmap_size as u64) + FRAME_SIZE - 1) / FRAME_SIZE;

        for i in 0..bitmap_frame_count {
            let frame_idx = (bitmap_start_frame + i) as usize;
            let byte_idx = frame_idx / 8;
            let bit_idx = frame_idx % 8;
            if byte_idx < bitmap.len() {
                bitmap[byte_idx] |= 1 << bit_idx; // set bit = used
            }
        }

        BitmapFrameAllocator {
            bitmap,
            total_frames,
            next_free: 0,
        }
    }

    /// Allocate a single physical frame.
    pub fn allocate_frame(&mut self) -> Option<PhysFrame<Size4KiB>> {
        // Scan from next_free hint forward
        for byte_idx in (self.next_free / 8)..self.bitmap.len() {
            let byte = self.bitmap[byte_idx];

            // 0xFF means all 8 frames in this byte are used, skip
            if byte == 0xFF {
                continue;
            }

            // Find the first free bit (0) in this byte
            for bit_idx in 0..8 {
                if byte & (1 << bit_idx) == 0 {
                    let frame_idx = byte_idx * 8 + bit_idx;

                    if frame_idx >= self.total_frames {
                        return None;
                    }

                    // Mark as used
                    self.bitmap[byte_idx] |= 1 << bit_idx;

                    // Update hint for next allocation
                    self.next_free = frame_idx + 1;

                    let addr = PhysAddr::new((frame_idx as u64) * FRAME_SIZE);
                    return Some(PhysFrame::containing_address(addr));
                }
            }
        }

        // Wrap around: try from the beginning up to where we started
        // (handles fragmentation after many alloc/dealloc cycles)
        let wrap_limit = self.next_free / 8;
        for byte_idx in 0..wrap_limit {
            let byte = self.bitmap[byte_idx];
            if byte == 0xFF {
                continue;
            }
            for bit_idx in 0..8 {
                if byte & (1 << bit_idx) == 0 {
                    let frame_idx = byte_idx * 8 + bit_idx;
                    self.bitmap[byte_idx] |= 1 << bit_idx;
                    self.next_free = frame_idx + 1;
                    let addr = PhysAddr::new((frame_idx as u64) * FRAME_SIZE);
                    return Some(PhysFrame::containing_address(addr));
                }
            }
        }

        None // out of memory
    }

    /// Free a physical frame, making it available for future allocations.
    pub fn deallocate_frame(&mut self, frame: PhysFrame<Size4KiB>) {
        let frame_idx = (frame.start_address().as_u64() / FRAME_SIZE) as usize;

        if frame_idx >= self.total_frames {
            return; // invalid frame, ignore
        }

        let byte_idx = frame_idx / 8;
        let bit_idx = frame_idx % 8;

        // Clear the bit = free
        self.bitmap[byte_idx] &= !(1 << bit_idx);

        // If this frame is before our hint, move the hint back
        // so we find it on the next allocation
        if frame_idx < self.next_free {
            self.next_free = frame_idx;
        }
    }

    /// How many frames are currently free (for diagnostics).
    pub fn free_frame_count(&self) -> usize {
        let mut count = 0;
        for byte_idx in 0..self.bitmap.len() {
            let byte = self.bitmap[byte_idx];
            // Count zero bits
            count += 8 - byte.count_ones() as usize;
        }

        // Subtract phantom frames from the last byte
        // (if total_frames isn't a multiple of 8, the trailing bits
        //  in the last byte don't represent real frames)
        let phantom = (self.bitmap.len() * 8) - self.total_frames;
        count.saturating_sub(phantom)
    }
}

/// Implement the x86_64 crate's FrameAllocator trait so this works
/// directly with OffsetPageTable::map_to()
unsafe impl FrameAllocator<Size4KiB> for BitmapFrameAllocator {
    fn allocate_frame(&mut self) -> Option<PhysFrame<Size4KiB>> {
        self.allocate_frame()
    }
}
