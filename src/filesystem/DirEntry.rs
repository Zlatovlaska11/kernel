pub mod DirEntry {

    use crate::filesystem::Inode::Inode::FileType;

    pub struct DirEntry {
        pub name: String,
        pub inode_number: u64,
        pub entry_type: FileType,
    }

    impl DirEntry {
        pub fn new(name: String, inode_number: u64, entry_type: InodeType) -> Self {
            DirEntry {
                name,
                inode_number,
                entry_type,
            }
        }
    }
}
