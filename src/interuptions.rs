
use crate::{cmd_handler, filesystem::file_tree, gdt, hlt_loop, print, println, vga_buffer};
use alloc::{
    fmt, str,
    string::{String, ToString},
};
use lazy_static::lazy_static;
use pc_keyboard::KeyCode;
use pic8259::ChainedPics;
use spin::Mutex;
use x86_64::structures::idt::{InterruptDescriptorTable, InterruptStackFrame, PageFaultErrorCode};

pub const PIC_1_OFFSET: u8 = 32;
pub const PIC_2_OFFSET: u8 = PIC_1_OFFSET + 8;

#[derive(Debug, Clone, Copy)]
#[repr(u8)]
pub enum InteruptIndex {
    TIMER = PIC_1_OFFSET,
    Keyboard,
}

impl InteruptIndex {
    fn as_u8(self) -> u8 {
        self as u8
    }

    fn as_usize(self) -> usize {
        usize::from(self.as_u8())
    }
}
pub const PROMPT: &str = " -> ";

#[derive(Debug)]
enum Prefix {
    Ctrl,
    CapsLock,
    None,
}

impl Prefix {
    pub fn new() -> Self {
        Prefix::None
    }
    pub fn from(keycode: KeyCode) -> Self {
        match keycode {
            KeyCode::LControl => Prefix::Ctrl,
            KeyCode::RControl => Prefix::Ctrl,
            KeyCode::CapsLock => Prefix::CapsLock,
            _default => Prefix::None,
        }
    }
}

impl fmt::Display for Prefix {
    fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
        write!(f, "{:?}", self)
        // or, alternatively:
        // fmt::Debug::fmt(self, f)
    }
}

lazy_static! {
    static ref cmd: Mutex<String> = Mutex::new(String::new());
    static ref prefix: Mutex<String> = Mutex::new(String::new());
}

pub static PIC: spin::Mutex<ChainedPics> =
    spin::Mutex::new(unsafe { ChainedPics::new(PIC_1_OFFSET, PIC_2_OFFSET) });

lazy_static! {
    static ref IDT: InterruptDescriptorTable = {
        let mut idt = InterruptDescriptorTable::new();
        idt.breakpoint.set_handler_fn(breakpoint_handler);
        unsafe {
            idt.page_fault.set_handler_fn(page_interupt_handler);
            idt[InteruptIndex::TIMER.as_usize()].set_handler_fn(timer_interrupt_handler);
            idt[InteruptIndex::Keyboard.as_usize()].set_handler_fn(keyboard_interrupt_handler);
            idt.double_fault
                .set_handler_fn(double_fault_handler)
                .set_stack_index(gdt::DOUBLE_FAULT_IST_INDEX);
        }
        idt
    };
}

extern "x86-interrupt" fn page_interupt_handler(
    stack_frame: InterruptStackFrame,
    error_code: PageFaultErrorCode,
) {
    use x86_64::registers::control::Cr2;

    println!("EXCEPTION: PAGE FAULT");
    println!("Accessed Address: {:?}", Cr2::read());
    println!("Error Code: {:?}", error_code);
    println!("{:#?}", stack_frame);
    hlt_loop();
}

extern "x86-interrupt" fn keyboard_interrupt_handler(_stack_frame: InterruptStackFrame) {
    use pc_keyboard::{layouts, DecodedKey, HandleControl, Keyboard, ScancodeSet1};
    use spin::Mutex;
    use x86_64::instructions::port::Port;

    lazy_static! {
        static ref KEYBOARD: Mutex<Keyboard<layouts::Dvorak104Key, ScancodeSet1>> =
            Mutex::new(Keyboard::new(
                ScancodeSet1::new(),
                layouts::Dvorak104Key,
                HandleControl::Ignore
            ));
    }

    let mut keyboard = KEYBOARD.lock();
    let mut port = Port::new(0x60);

    let scancode: u8 = unsafe { port.read() };
    if let Ok(Some(key_event)) = keyboard.add_byte(scancode) {
        if let Some(key) = keyboard.process_keyevent(key_event) {
            match key {
                DecodedKey::Unicode('\u{0008}') => {
                    vga_buffer::WRITER.lock().write_byte(0x0E);
                    cmd.lock().pop();
                }
                DecodedKey::Unicode(character) => match character {
                    'a'..='z' => {
                        if prefix.lock().as_str() == "None" || prefix.lock().is_empty() {
                            cmd.lock().push(character);
                            print!("{}", character)
                        } else {
                            cmd_handler::handle_prefix_action(character.to_string().as_str());
                            prefix.lock().clear();
                        }
                    }
                    '1'..'9' => {
                        if prefix.lock().as_str() == "None" || prefix.lock().is_empty() {
                            cmd.lock().push(character);
                            print!("{}", character)
                        } else {
                            cmd_handler::handle_prefix_action(character.to_string().as_str());
                            prefix.lock().clear();
                        }
                    }
                    ' ' => {
                        cmd.lock().push(character);
                        print!(" ")
                    }
                    '.' => {
                        cmd.lock().push_str(".");
                        print!(".")

                    }
                    '\n' => {
                        if !cmd.lock().is_empty() {
                            crate::cmd_handler::handle_cmd(&mut cmd.lock());
                        }
                        print!("\n");
                        let dir = file_tree::fs_system.lock().cur_node.lock().dir_name.clone();
                        print!("{} {}",dir, PROMPT);
                        cmd.lock().clear();
                        prefix.lock().clear();
                    }
                    '\u{27}' => {
                        prefix.lock().clear();
                    }
                    default => print!("{}", default),
                },
                DecodedKey::RawKey(key) => {
                    let prefx = Prefix::from(key);
                    prefix.lock().push_str(&prefx.to_string());
                }
            }
        }
    }

    unsafe {
        PIC.lock()
            .notify_end_of_interrupt(InteruptIndex::Keyboard.as_u8());
    }
}

extern "x86-interrupt" fn timer_interrupt_handler(_stack_frame: InterruptStackFrame) {
    unsafe {
        PIC.lock()
            .notify_end_of_interrupt(InteruptIndex::TIMER.as_u8());
    }
}

pub fn init_idt() {
    IDT.load();
}

extern "x86-interrupt" fn breakpoint_handler(stack_frame: InterruptStackFrame) {
    println!("EXCEPTION: BREAKPOINT\n{:#?}", stack_frame);
}

extern "x86-interrupt" fn double_fault_handler(
    stack_frame: InterruptStackFrame,
    _error_code: u64,
) -> ! {
    panic!("EXCEPTION: DOUBLE FAULT\n{:#?}", stack_frame);
}

#[test_case]
fn test_breakpoint_exception() {
    // invoke a breakpoint exception
    x86_64::instructions::interrupts::int3();
}
