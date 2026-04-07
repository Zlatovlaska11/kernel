// in src/main.rs
#![no_std]
#![no_main]
#![feature(custom_test_frameworks)]
#![test_runner(kernel::test_runner)]
#![reexport_test_harness_main = "test_main"]

pub mod serial;

use core::panic::PanicInfo;

use bootloader_api::config::Mapping;
use bootloader_api::{entry_point, BootInfo, BootloaderConfig};
use kernel::{
    interuptions,
    memory::{self, BootInfoFrameAllocator},
    print,
};
use x86_64::{structures::paging::Page, VirtAddr};
extern crate alloc;

pub static BOOTLOADER_CONFIG: BootloaderConfig = {
    let mut config = BootloaderConfig::new_default();
    config.mappings.physical_memory = Some(Mapping::Dynamic);
    config.kernel_stack_size = 4 * 1024 * 1024; // 4 MiB
    config
};

entry_point!(kernel_main, config = &BOOTLOADER_CONFIG);

#[no_mangle]
pub fn kernel_main(boot_info: &'static mut BootInfo) -> ! {
    // Set up framebuffer output before anything else.
    if let Some(fb) = boot_info.framebuffer.as_mut() {
        let info = fb.info();
        kernel::vga_buffer::init(
            fb.buffer_mut(),
            info.width,
            info.height,
            info.stride,
            info.bytes_per_pixel,
            info.pixel_format,
        );
    }

    let phys_mem_offset = boot_info.physical_memory_offset.into_option().unwrap();

    kernel::init();

    let logo = r"
 _______       _             _             _____ _____ 
|___  / |     | |           | |           |  _  /  ___|
   / /| | __ _| |_ _____   _| | __ _ ___  | | | \ `--. 
  / / | |/ _` | __/ _ \ \ / / |/ _` / __| | | | |`--. \
./ /__| | (_| | || (_) \ V /| | (_| \__ \ \ \_/ /\__/ /
\_____/_|\__,_|\__\___/ \_/ |_|\__,_|___/  \___/\____/ 
        
";

    // Clear bootloader's framebuffer output.
    kernel::vga_buffer::WRITER.lock().clear_screen();

    print!("{}", logo);

    print!("{}", interuptions::PROMPT);

    serial_println!("[1] starting memory init");
    let phys_mem_offset = VirtAddr::new(phys_mem_offset);
    let mut mapper = unsafe { memory::init(phys_mem_offset) };
    serial_println!("[2] mapper ok");

    let mut frame_allocator = unsafe { BootInfoFrameAllocator::init(&boot_info.memory_regions) };
    serial_println!("[3] frame allocator ok");

    // map an unused page
    let page = Page::containing_address(VirtAddr::new(0xdeadbeaf000));
    memory::create_example_mapping(page, &mut mapper, &mut frame_allocator);
    serial_println!("[4] example mapping ok");

    // alloc some kernel heap size defined in the alocator.rs
    kernel::alocator::init_heap(&mut mapper, &mut frame_allocator).expect("allocation failed");
    let rsp: u64;
    unsafe {
        core::arch::asm!("mov {}, rsp", out(reg) rsp);
    }
    serial_println!("[5] heap ok, RSP={:#x} — entering hlt_loop", rsp);
    kernel::hlt_loop()
}

/// This function is called on panic.
#[cfg(not(test))]
#[panic_handler]
fn panic(info: &PanicInfo) -> ! {
    use kernel::println;
    println!("{}", info);
    kernel::hlt_loop();
}

#[cfg(test)]
#[panic_handler]
fn panic(info: &PanicInfo) -> ! {
    kernel::test_panic_handler(info)
}
