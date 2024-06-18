use core::default;

use alloc::{string::{String, ToString}, vec::Vec};

use crate::{print, println, vga_buffer};


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
        default => ()
        
    }
}

fn say_hi(command: &String){

    if command.is_empty(){

        print!("\nwrong args")
    }

    print!("\nZlatovlas (god): {}", command);

}
