pub mod Inode {
    use crate::filesystem::DirEntry::DirEntry::DirEntry;

    pub struct Inode {
        pub inode_number: u64,
        pub file_size: u64,
        pub direct_blocks: [u64; 12],
        pub indirect_block: u64,
        pub DirEntr: Vec<DirEntry>,
    }

    pub enum FileType {
        File,
        Directory,
    }

    impl Inode {
        pub fn new(inode_number: u64) -> Self {
            Inode {
                inode_number,
                file_size: 0,
                direct_blocks: [0; 12],
                indirect_block: 0,
                DirEntr: Vec::new(),
            }
        }
    }
}
