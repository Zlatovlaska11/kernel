// in src/main.rs
#![no_std]
#![no_main]
#![feature(custom_test_frameworks)]
#![test_runner(kernel::test_runner)]
#![reexport_test_harness_main = "test_main"]

use core::panic::PanicInfo;

use bootloader_api::config::Mapping;
use bootloader_api::{entry_point, BootInfo, BootloaderConfig};
use kernel::task::join::JoinHandle;
use kernel::task::scheduler;
use kernel::task::scheduler::SCHEDULER;
use kernel::task::sleep;
use kernel::{interuptions, memory, print, println};
use spin::Mutex;
use x86_64::VirtAddr;
extern crate alloc;

pub static BOOTLOADER_CONFIG: BootloaderConfig = {
    let mut config = BootloaderConfig::new_default();
    config.mappings.physical_memory = Some(Mapping::Dynamic);
    config.kernel_stack_size = 4 * 1024 * 1024; // 4 MiB
    config
};

entry_point!(kernel_main, config = &BOOTLOADER_CONFIG);

// fn() can't capture env, so stash the JoinHandle here before spawning task_a.
static TASK_B_HANDLE: Mutex<Option<JoinHandle>> = Mutex::new(None);

fn task_b() {
    println!("task B: starting heavy work");
    sleep(200);
    println!("task B: done");
}

fn task_a() {
    println!("task A: waiting for B to finish");
    let handle = TASK_B_HANDLE.lock().take().expect("no handle");
    handle.join();
    println!("task A: B is done, continuing");
}

#[no_mangle]
pub fn kernel_main(boot_info: &'static mut BootInfo) -> ! {
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
   / /| |/ _` | __/ _ \ \ / / |/ _` / __| | | | |`--. \
  / / | |/ _` | __/ _ \ \ / / |/ _` / __| | | | |`--. \
./ /__| | (_| | || (_) \ V /| | (_| \__ \ \ \_/ /\__/ /
\_____/_|\__,_|\__\___/ \_/ |_|\__,_|___/  \___/\____/

";

    kernel::vga_buffer::WRITER.lock().clear_screen();

    print!("{}", logo);
    print!("{}", interuptions::PROMPT);

    let handle = SCHEDULER.lock().spawn_joinable(task_b);
    *TASK_B_HANDLE.lock() = Some(handle);
    SCHEDULER.lock().spawn(task_a);

    scheduler::run();
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
