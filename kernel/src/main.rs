// in src/main.rs
#![no_std]
#![no_main]
#![feature(custom_test_frameworks)]
#![test_runner(kernel::test_runner)]
#![reexport_test_harness_main = "test_main"]

use core::panic::PanicInfo;

use bootloader_api::config::Mapping;
use bootloader_api::{entry_point, BootInfo, BootloaderConfig};
use kernel::{interuptions, memory, print, spin_pause};
use x86_64::instructions::interrupts;
use kernel::task::scheduler;
use x86_64::VirtAddr;
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

    let phys_mem_offset = VirtAddr::new(boot_info.physical_memory_offset.into_option().unwrap());

    unsafe {
        memory::init(phys_mem_offset, &boot_info.memory_regions);
    };

    kernel::alocator::init_heap_global();

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


    interrupts::without_interrupts(|| {
        scheduler::SCHEDULER.lock().spawn(|| {
            for _ in 0..5 {
                print!("A");
                spin_pause(200_000);
            }
        });
    });

    interrupts::without_interrupts(|| {
        scheduler::SCHEDULER.lock().spawn(|| {
            for _ in 0..5 {
                print!("B");
                spin_pause(200_000);
            }
        });
    });

    // kick off the scheduler — releases the lock before jumping, never returns
    scheduler::run();

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
