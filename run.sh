ssh -i id_ed25519 zlatovlas@77.236.222.115 -t "cd kernel && cargo build --target x86_64-zlatovlas-os.json"
scp zlatovlas@77.236.222.115:/home/zlatovlas/kernel/target/x86_64-zlatovlas-os/debug/bootimage-kernel.bin ./
qemu-system-x86_64 -drive format=raw,file=./bootimage-kernel.bin -display cocoa
