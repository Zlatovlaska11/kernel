pub(crate) mod SuperBlock {

    pub struct SuperBlock {
        pub total_blocks: u64,
        pub free_blocks: u64,
        pub block_size: u64,
        pub root_inode: u64,
    }

    trait SuperBlockOps {
        fn new(total_blocks: u64, free_blocks: u64, block_size: u64, root_inode: u64) -> Self;
        fn allocate_block(&mut self) -> Option<u64>;
        fn free_block(&mut self, block_number: u64);
        fn get_free_blocks(&self) -> u64;
    }

    impl SuperBlockOps for SuperBlock {
        fn new(total_blocks: u64, free_blocks: u64, block_size: u64, root_inode: u64) -> Self {
            SuperBlock {
                total_blocks,
                free_blocks,
                block_size,
                root_inode,
            }
        }

        fn allocate_block(&mut self) -> Option<u64> {
            if self.free_blocks > 0 {
                self.free_blocks -= 1;
                Some(self.total_blocks - self.free_blocks - 1)
            } else {
                None
            }
        }

        fn free_block(&mut self, block_number: u64) {
            if self.free_blocks < self.total_blocks {
                self.free_blocks += 1;
            }
        }

        fn get_free_blocks(&self) -> u64 {
            self.free_blocks
        }
    }
}
