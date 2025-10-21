use alloc::string::{String, ToString};
use crate::{
    filesystem::simple_fs::FS,
    print, println,
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
        "mkdir" => {
            if arg.is_empty() {
                println!("\nUsage: mkdir <dirname>");
            } else {
                FS.lock().mkdir(arg);
                println!("Directory '{}' created", arg);
            }
        }
        "touch" => {
            if arg.is_empty() {
                println!("\nUsage: touch <filename>");
            } else {
                FS.lock().touch(arg);
                println!("File '{}' created", arg);
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
            println!("{}", path);
        }
        "clear" => {
            // Assuming you have a clear function in your VGA buffer
            crate::vga_buffer::WRITER.lock().clear_screen();
        }
        _ => println!("\nCommand not found: {}", cmd),
    }
}
