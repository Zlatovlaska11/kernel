use alloc::{string::{String, ToString}, vec::Vec};
use crate::{
    filesystem::simple_fs::FS,
    println,
    vga_buffer::WRITER,
};

pub fn handle_cmd(command: &mut String) {
    let parts: Vec<&str> = command.split_whitespace().collect();
    
    if parts.is_empty() {
        return;
    }

    let cmd = parts[0];
    let arg = if parts.len() > 1 { parts[1] } else { "" };

    match cmd {
        "help" => {
            println!("\nAvailable commands:");
            println!("  ls          - list files and directories");
            println!("  mkdir NAME  - create a directory");
            println!("  touch NAME  - create a file");
            println!("  cd NAME     - change directory");
            println!("  cd ..       - go to parent directory");
            println!("  cd /        - go to root directory");
            println!("  pwd         - print working directory");
            println!("  clear       - clear screen");
        }
        "ls" => {
            FS.lock().ls();
        }
        "echo" => {
            let file_name = arg.split(' ')[0];
            if file_name.is_empty() {
                println!("\nUsage: echo <filename>");
            } else {
                FS.lock().echo(file_name, arg.split(' ')[1]);
            }
        }
        "cat" => {
            let file_name = arg;
            if file_name.is_empty() {
                println!("\nUsage: cat <filename>");
            } else {
                FS.lock().cat(file_name);
            }
        }
        "mkdir" => {
            if arg.is_empty() {
                println!("\nUsage: mkdir <dirname>");
            } else {
                FS.lock().mkdir(arg);
            }
        }
        "touch" => {
            if arg.is_empty() {
                println!("\nUsage: touch <filename>");
            } else {
                FS.lock().touch(arg);
                println!("\nFile '{}' created", arg);
            }
        }
        "cd" => {
            if arg.is_empty() {
                println!("\nUsage: cd <dirname>");
            } else {
                FS.lock().cd(arg);
            }
        }
        "pwd" => {
            let path = FS.lock().pwd();
            println!("\n{}", path);
        }
        "debug" => {
            let fs = FS.lock();
            let path = fs.pwd();
            let current = fs.get_current_dir();
            println!("Current path: {}", path);
            println!("Subdirs in current: {}", current.subdirs.len());
            for dir in &current.subdirs {
                println!("  - {}", dir.name);
            }
        }
        "clear" => {
            WRITER.lock().clear_screen();
        }
        _ => println!("\nCommand not found: {}", cmd),
    }
}

pub fn handle_prefix_action(key: &str) {
    match key {
        "l" => WRITER.lock().clear_screen(),
        _ => (),
    }
}
