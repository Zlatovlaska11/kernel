use alloc::{string::{String, ToString}, vec::Vec};

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
            let head = fs_system.lock().tree_head.nodes.clone();
            file_tree::fs_system.lock().seriliaze(head, None);
        }
        "mkdir" => {
            let node = Node::new(rest);
            fs_system.lock().cur_node.lock().nodes.push(node);
        }
        "cd" => {
            unsafe { fs_system.force_unlock() };
            fs_system.lock().change_node(rest)
        }
        "list" => {
            let names: Vec<String> = fs_system
                .lock()
                .cur_node
                .lock()
                .nodes
                .iter()
                .map(|x| x.dir_name.clone())
                .collect();

            names.iter().map(|x| println!("{}", x));
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
