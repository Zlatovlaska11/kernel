use alloc::{
    boxed::Box,
    string::{String, ToString},
    sync::{Arc, Weak},
    vec::Vec,
};
use lazy_static::lazy_static;
use spin::Mutex;

use crate::{
    filesystem::file_tree::{self, fs_system, insert_content, list_files, File, Node},
    print, println,
    vga_buffer::{self, WRITER},
};

pub fn handle_cmd(command: &mut String) {
    let comm: String;
    let mut rest: String = String::new();
    if let Some(cmd) = command.find(' ') {
        comm = command[0..cmd].as_mut().to_string();
        rest = command[cmd + 1..command.len()].to_string()
    } else {
        comm = command.to_string();
    }

    match comm.as_str() {
        "help" => print!("\nthis is help"),
        "sayhi" => say_hi(&rest),
        "clear" => WRITER.lock().clear_screen(),
        "touch" => make_file(rest),
        "ls" => list_files(),
        "hash" => {
            let head = fs_system.lock().tree_head.lock().nodes.clone();
            file_tree::fs_system.lock().serialize(head, None);
        }
        "mkdir" => {
            let dir_name = rest.clone();
            fs_system.lock().mkdir(dir_name.as_str());
            println!("dir: {} created", dir_name.as_str());
        }
        "cd" => {
            // Just call change_node directly without force_unlock
            let location = rest.clone();
            fs_system.lock().change_node(&location);
        }
        "list" => {
            let names: Vec<String> = fs_system
                .lock()
                .cur_node
                .lock()
                .nodes
                .iter()
                .map(|x| x.lock().dir_name.clone())
                .collect();

            for name in names {
                println!("{}", name);
            }
        }

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
