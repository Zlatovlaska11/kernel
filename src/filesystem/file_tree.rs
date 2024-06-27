use core::{borrow::Borrow, cell::RefCell, ops::Deref, str::Bytes};

use alloc::{
    boxed::Box,
    rc::Rc,
    string::{self, String, ToString},
    vec::Vec,
};
use lazy_static::lazy_static;
use spin::Mutex;

use crate::{print, println};

#[derive(Clone, Debug)]
pub struct File {
    content: String,
    name: String,
}

#[derive(Clone)]
pub struct Node {
    dir_name: String,
    nodes: Option<Vec<Node>>,
    content: Vec<File>,
}

pub struct FileTree {
    tree_head: Box<Node>,
    cur_node: Node,
}

lazy_static! {
    pub static ref fs_system: Mutex<FileTree> = Mutex::new(FileTree::new());
}

pub fn insert_node(nd: &Node) {
    let mut fs = fs_system.lock();
    match fs.cur_node.nodes {
        Some(ref mut cur_nd) => {
            cur_nd.push(nd.clone());
        }
        _ => (),
    }
}

pub fn insert_content(cn: File) {
    fs_system.lock().cur_node.content.push(cn);
}

impl FileTree {
    pub fn new() -> Self {
        let head = Node {
            dir_name: "/".to_string(),
            nodes: Some(Vec::new()),
            content: Vec::new(),
        };

        let nd = Node {
            dir_name: "/".to_string(),
            nodes: Some(Vec::new()),
            content: Vec::new(),
        };

        FileTree {
            cur_node: nd,
            tree_head: Box::new(head),
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

pub fn list_files() {
    fs_system
        .lock()
        .cur_node
        .content
        .iter()
        .map(|x| print!("\n{} ", x.name))
        .collect()
}
