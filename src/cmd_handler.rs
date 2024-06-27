use alloc::{
    string::{String, ToString},
    vec::Vec,
};

use crate::{
    filesystem::{self, file_tree::{fs_system, insert_content, list_files, File, FileTree}}, print, println, serial_print, serial_println, vga_buffer::{self, WRITER}
};

pub fn handle_cmd(command: &mut String) {
    let comm: String;
    let mut rest: String = String::new();
    if let Some(cmd) = command.find(' ') {
        comm = command[0..cmd].as_mut().to_string();
        rest = command[cmd..command.len()].to_string()
    } else {
        comm = command.to_string();
    }

    match comm.as_str() {
        "help" => print!("\nthis is help"),
        "sayhi" => say_hi(&rest),
        "clear" => WRITER.lock().clear_screen(),
        "touch" => make_file(rest),
        "ls" => list_files(),
        _default => print!("\ncommand not found"),
    }
}

pub fn handle_prefix_action(key: &str) {
    match key {
        "l" => WRITER.lock().clear_screen(),
        _ => (),
    }
}

fn say_hi(command: &String) {
    if command.is_empty() {
        print!("\nwrong args")
    }
    WRITER.lock().change_color(vga_buffer::Color::Yellow);

    print!("\nZlatovlas (god): ");

    WRITER.lock().change_color(vga_buffer::Color::Pink);

    print!("{}", command);
}

fn make_file(params: String) {

    insert_content(File::new(params, String::new()));
}


