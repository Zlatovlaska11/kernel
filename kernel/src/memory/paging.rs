use x86_64::registers::control::Cr3;
use x86_64::structures::paging::OffsetPageTable;
use x86_64::VirtAddr;

/// Initialize the kernel page table mapper.
///
/// # Safety
/// - `phys_mem_offset` must map all physical memory
/// - Must be called only once
pub unsafe fn init_mapper(phys_mem_offset: VirtAddr) -> OffsetPageTable<'static> {
    let (level_4_table_frame, _) = Cr3::read();
    let phys = level_4_table_frame.start_address();
    let virt = phys_mem_offset + phys.as_u64();
    let level_4_table = &mut *(virt.as_mut_ptr());

    OffsetPageTable::new(level_4_table, phys_mem_offset)
}
