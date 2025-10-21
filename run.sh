ssh -i id_ed25519 zlatovlas@77.236.222.115 -t "cd kernel && git pull && cargo run"
scp zlatovlas@77.236.222.115:/home/zlatovlas/kernel/target/x86_64-zlatovlas-os/debug/bootimage-kernel.bin ./
qemu-system-x86_64 -drive format=raw,file=./bootimage-kernel.bin -display cocoa
