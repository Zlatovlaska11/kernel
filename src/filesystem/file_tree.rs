use hashbrown::HashMap;

use alloc::{
    boxed::Box,
    string::{String, ToString},
    sync::Arc,
    vec::Vec,
};
use lazy_static::lazy_static;
use spin::Mutex;

use crate::{
    println,
    vga_buffer::{self, WRITER},
};

#[derive(Clone, Debug)]
pub struct File {
    content: String,
    name: String,
}

#[derive(Clone, Debug)]
pub struct Node {
    dir_name: String,
    pub nodes: Vec<Node>,
    content: Vec<File>,
}

pub struct FileTree {
    pub tree_head: Box<Node>,
    pub cur_node: Node,
    pub prev_node: Option<Arc<Mutex<Node>>>,
}

lazy_static! {
    pub static ref fs_system: Mutex<FileTree> = Mutex::new(FileTree::new());
}

pub fn insert_content(cn: File) {
    fs_system.lock().cur_node.content.push(cn);
}

impl FileTree {
    pub fn new() -> Self {
        let head = Node {
            dir_name: "/".to_string(),
            nodes: Vec::new(),
            content: Vec::new(),
        };

        let nd = Node {
            dir_name: "/".to_string(),
            nodes: Vec::new(),
            content: Vec::new(),
        };

        FileTree {
            cur_node: nd,
            tree_head: Box::new(head),
            prev_node: None,
        }
    }

    pub fn seriliaze(&mut self, tree_head: Vec<Node>, cur_hash: Option<String>) {
        let mut hash = match cur_hash {
            Some(it) => it,
            None => String::new(),
        };
        for n in tree_head {
            if n.clone().nodes.is_empty() {
                hash.push_str("(");
                continue;
            } else {
                let mut files = String::new();
                for f in n.content {
                    let pfs = "{}/".to_string() + &f.name;
                    files.push_str(&pfs);
                    hash.push_str(&files);
                }
                return self.seriliaze(n.nodes, Some(hash));
            }
        }

        println!("{}", hash);
    }

    pub fn change_cur_node() {
        
        unimplemented!()
    }
}

impl File {
    pub fn new(filename: String, content: String) -> Self {
        Self {
            content,
            name: filename,
        }
    }
}

impl Node {
    pub fn new(dir_name: String) -> Self {
        Node {
            dir_name,
            nodes: Vec::new(),
            content: Vec::new(),
        }
    }
}

pub fn list_files() {
    println!();

    for f in &fs_system.lock().cur_node.content {
        write_blue(f.name.clone())
    }

    for d in &fs_system.lock().cur_node.nodes {
        write_blue(d.dir_name.clone())
    }
}

fn write_blue(args: String) {
    vga_buffer::WRITER
        .lock()
        .change_color(vga_buffer::Color::Blue);
    let ags = args + " ";
    WRITER.lock().write_string(&ags);
    WRITER.lock().change_color(vga_buffer::Color::White)
}
