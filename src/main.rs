// in src/main.rs
#![no_std]
#![no_main]
#![feature(custom_test_frameworks)]
#![test_runner(kernel::test_runner)]
#![reexport_test_harness_main = "test_main"]

pub mod serial;

use core::panic::PanicInfo;

use bootloader::{entry_point, BootInfo};
use kernel::{
    memory::{self, BootInfoFrameAllocator},
    print, println,
};
use x86_64::{
    structures::paging::{Page, Translate},
    VirtAddr,
};
extern crate alloc;

entry_point!(kernel_main);

#[no_mangle]
pub fn kernel_main(boot_info: &'static BootInfo) -> ! {
    kernel::init();

    let logo = r"
 _______       _             _             _____ _____ 
|___  / |     | |           | |           |  _  /  ___|
   / /| | __ _| |_ _____   _| | __ _ ___  | | | \ `--. 
  / / | |/ _` | __/ _ \ \ / / |/ _` / __| | | | |`--. \
./ /__| | (_| | || (_) \ V /| | (_| \__ \ \ \_/ /\__/ /
\_____/_|\__,_|\__\___/ \_/ |_|\__,_|___/  \___/\____/ 
        
";

    print!("{}", logo);

    let phys_mem_offset = VirtAddr::new(boot_info.physical_memory_offset);
    let mut mapper = unsafe { memory::init(phys_mem_offset) };
    let mut frame_allocator = unsafe { BootInfoFrameAllocator::init(&boot_info.memory_map) };

    // map an unused page
    let page = Page::containing_address(VirtAddr::new(0xdeadbeaf000));
    memory::create_example_mapping(page, &mut mapper, &mut frame_allocator);

    // alloc some kernel heap size defined in the alocator.rs
    kernel::alocator::init_heap(&mut mapper, &mut frame_allocator).expect("allocation failed");


    kernel::hlt_loop()
}

/// This function is called on panic.
#[cfg(not(test))]
#[panic_handler]
fn panic(info: &PanicInfo) -> ! {
    println!("{}", info);
    kernel::hlt_loop();
}

#[cfg(test)]
#[panic_handler]
fn panic(info: &PanicInfo) -> ! {
    kernel::test_panic_handler(info)
}
