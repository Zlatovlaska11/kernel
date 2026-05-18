use std::{
    fs,
    path::PathBuf,
    process::Command,
};

fn main() {
    let disk_image = PathBuf::from(env!("UEFI_IMAGE"));
    let ovmf_code = PathBuf::from(env!("OVMF_CODE"));

    // Copy vars to a writable location so QEMU can update it.
    let ovmf_vars_src = PathBuf::from(env!("OVMF_VARS"));
    let ovmf_vars = disk_image
        .parent()
        .unwrap()
        .join("ovmf_vars.fd");
    fs::copy(&ovmf_vars_src, &ovmf_vars).expect("failed to copy OVMF vars");

    let mut qemu = Command::new("qemu-system-x86_64");
    qemu.arg("-drive")
        .arg(format!(
            "if=pflash,format=raw,readonly=on,file={}",
            ovmf_code.display()
        ))
        .arg("-drive")
        .arg(format!(
            "if=pflash,format=raw,file={}",
            ovmf_vars.display()
        ))
        .arg("-drive")
        .arg(format!("format=raw,file={}", disk_image.display()))
        .arg("-serial")
        .arg("stdio");

    let exit_status = qemu.status().unwrap();
    std::process::exit(exit_status.code().unwrap_or(-1));
}
