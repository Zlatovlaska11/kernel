use alloc::{
    boxed::Box,
    string::{String, ToString},
    sync::{Arc, Weak},
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

#[derive(Debug)]
pub struct Node {
    pub dir_name: String,
    pub content: Vec<File>,
    pub prev_node: Option<Weak<Mutex<Node>>>,
    pub nodes: Vec<Arc<Mutex<Node>>>,
}

pub struct FileTree {
    pub tree_head: Arc<Mutex<Node>>,
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
        let head = Arc::new(Mutex::new(Node::new("/".to_string(), None)));
        Self {
            tree_head: head.clone(),
            cur_node: head,
        }
    }

    pub fn serialize(&mut self, tree_head: Vec<Arc<Mutex<Node>>>, cur_hash: Option<String>) {
        let mut hash = match cur_hash {
            Some(it) => it,
            None => String::new(),
        };
        for n in tree_head {
            let n_guard = n.lock();
            if n_guard.nodes.is_empty() {
                hash.push_str("(");
                continue;
            } else {
                for f in &n_guard.content {
                    let path = format!("{}/{}", n_guard.dir_name, f.name);
                    hash.push_str(&path);
                }
                return self.serialize(n_guard.nodes.clone(), Some(hash));
            }
        }
    }

    pub fn change_node(&mut self, location: &str) {
        if location == ".." {
            let parent_opt = {
                let cur = self.cur_node.lock();
                cur.prev_node.as_ref().and_then(|w| w.upgrade())
            };
            if let Some(parent) = parent_opt {
                self.cur_node = parent;
            }
            return;
        }

        let next_opt = {
            let cur = self.cur_node.lock();
            cur.nodes
                .iter()
                .find(|child| child.lock().dir_name == location)
                .cloned()
        };
        if let Some(next) = next_opt {
            self.cur_node = next;
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
    pub fn new(dir_name: String, parent: Option<&Arc<Mutex<Node>>>) -> Self {
        Node {
            dir_name,
            content: Vec::new(),
            nodes: Vec::new(),
            prev_node: parent.map(|p| Arc::downgrade(p)),
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
