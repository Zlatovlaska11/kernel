use alloc::{string::{String, ToString}, vec::Vec};
use lazy_static::lazy_static;
use spin::Mutex;

#[derive(Clone, Debug)]
pub struct File {
    pub name: String,
}

#[derive(Clone, Debug)]
pub struct Directory {
    pub name: String,
    pub files: Vec<File>,
    pub subdirs: Vec<Directory>,
}

pub struct FileSystem {
    pub root: Directory,
    pub current_path: Vec<String>,
}

lazy_static! {
    pub static ref FS: Mutex<FileSystem> = Mutex::new(FileSystem::new());
}

impl Directory {
    pub fn new(name: &str) -> Self {
        Directory {
            name: name.to_string(),
            files: Vec::new(),
            subdirs: Vec::new(),
        }
    }
}

impl FileSystem {
    pub fn new() -> Self {
        FileSystem {
            root: Directory::new("/"),
            current_path: Vec::new(),
        }
    }

    /// Get mutable reference to current directory
    pub fn get_current_dir_mut(&mut self) -> &mut Directory {
        let mut dir = &mut self.root;
        for dir_name in &self.current_path {
            let index = dir.subdirs.iter().position(|d| &d.name == dir_name)
                .expect("Directory not found");
            dir = &mut dir.subdirs[index];
        }
        dir
    }

    /// Get immutable reference to current directory
    pub fn get_current_dir(&self) -> &Directory {
        let mut dir = &self.root;
        for dir_name in &self.current_path {
            dir = &dir.subdirs.iter()
                .find(|d| &d.name == dir_name)
                .expect("Directory not found");
        }
        dir
    }

    pub fn mkdir(&mut self, name: &str) {
        let current = self.get_current_dir_mut();
        if !current.subdirs.iter().any(|d| d.name == name) {
            current.subdirs.push(Directory::new(name));
        }
    }

    pub fn touch(&mut self, name: &str) {
        let current = self.get_current_dir_mut();
        if !current.files.iter().any(|f| f.name == name) {
            current.files.push(File {
                name: name.to_string(),
            });
        }
    }

    pub fn cd(&mut self, path: &str) {
        if path == ".." {
            self.current_path.pop();
        } else if path == "/" {
            self.current_path.clear();
        } else {
            // Check if directory exists before navigating
            let exists = {
                let current = self.get_current_dir();
                current.subdirs.iter().any(|d| d.name == path)
            };
            if exists {
                self.current_path.push(path.to_string());
            } else {
                crate::println!("Directory '{}' not found", path);
            }
        }
    }

    pub fn ls(&self) {
        let current = self.get_current_dir();
        
        
        // Print subdirectories
        for dir in &current.subdirs {
            crate::println!("{}/", dir.name);
        }
        
        // Print files
        for file in &current.files {
            crate::println!("{}", file.name);
        }
    }

    pub fn pwd(&self) -> String {
        if self.current_path.is_empty() {
            "/".to_string()
        } else {
            let mut path = String::from("/");
            for dir in &self.current_path {
                path.push_str(dir);
                path.push('/');
            }
            path
        }
    }
}
