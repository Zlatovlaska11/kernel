use std::{path::PathBuf, process::Command};

fn main() {
    let disk_image = PathBuf::from(env!("BIOS_IMAGE"));

    let mut qemu = Command::new("qemu-system-x86_64");
    qemu.arg("-drive")
        .arg(format!("format=raw,file={}", disk_image.display()))
        .arg("-serial")
        .arg("stdio");

    let exit_status = qemu.status().unwrap();
    std::process::exit(exit_status.code().unwrap_or(-1));
}
