use alloc::{
    boxed::Box,
    string::{String, ToString},
    sync::Arc,
    vec::Vec,
};
use lazy_static::lazy_static;
use spin::Mutex;

use crate::{
    print, println,
    vga_buffer::{self, WRITER},
};

#[derive(Clone, Debug)]
pub struct File {
    content: String,
    name: String,
}

#[derive(Clone, Debug)]
pub struct Node {
    pub dir_name: String,
    pub nodes: Vec<Node>,
    content: Vec<File>,
    pub prev_node: Option<Box<Node>>,
}

pub struct FileTree {
    pub tree_head: Box<Node>,
    pub cur_node: Arc<Mutex<Node>>,
}

lazy_static! {
    pub static ref fs_system: Arc<Mutex<FileTree>> = Arc::new(Mutex::new(FileTree::new()));
}

pub fn insert_content(cn: File) {
    fs_system.lock().cur_node.lock().content.push(cn);
}

impl FileTree {
    pub fn new() -> Self {
        let head = Node {
            dir_name: "/".to_string(),
            nodes: Vec::new(),
            content: Vec::new(),
            prev_node: None,
        };

        let nd = Node {
            dir_name: "/".to_string(),
            nodes: Vec::new(),
            content: Vec::new(),
            prev_node: None,
        };

        FileTree {
            cur_node: Arc::new(Mutex::new(nd)),
            tree_head: Box::new(head),
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

    pub fn change_node(&mut self, location: String) {

        if location == ".." {
            let mut cur_node_guard = self.cur_node.lock();
            if let Some(prev_node) = &cur_node_guard.prev_node {
                let prev_node_clone = (**prev_node).clone();
                *cur_node_guard = prev_node_clone;
            }
            return;
        }

        let nds = &self.cur_node.lock().nodes.clone();

        // Iterate over nodes
        for x in nds {
            if location == x.dir_name {
                let mut cur_node_guard = self.cur_node.lock();
                *cur_node_guard = x.clone();

                break;
            }
        }
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
            prev_node: Some(Box::new(fs_system.lock().cur_node.lock().clone())),
        }
    }
}

pub fn list_files() {
    println!();

    for f in &fs_system.lock().cur_node.lock().content {
        write_blue(f.name.clone())
    }

    for d in &fs_system.lock().cur_node.lock().nodes {
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
