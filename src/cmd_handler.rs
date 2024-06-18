
use alloc::{string::{String, ToString}, vec::Vec};

use crate::{print, println, serial_print, serial_println, vga_buffer::{self, WRITER}};


pub fn handle_cmd(command: &mut String){

    let comm: String;
    let mut rest: String = String::new();
    if let Some(cmd) = command.find(' '){
       comm = command[0..cmd].as_mut().to_string();
       rest = command[cmd..command.len()].to_string()
    }
    else {
        comm = command.to_string();
    }

    match comm.as_str() {
        "help" => print!("\nthis is help"),
        "sayhi" => say_hi(&rest), 
        "clear" => WRITER.lock().clear_screen(),
        "test" => WRITER.lock().test(),
        _default => print!("\ncommand not found")
        
    }
}

fn say_hi(command: &String){

    if command.is_empty(){

        print!("\nwrong args")
    }
    WRITER.lock().change_color(vga_buffer::Color::Yellow);

    print!("\nZlatovlas (god): ");

    WRITER.lock().change_color(vga_buffer::Color::White);

    print!("{}", command);
}
