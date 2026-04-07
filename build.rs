use std::{
    env,
    path::PathBuf,
    process::{self, Command},
};
use bootloader::BiosBoot;

fn main() {
    let manifest_dir = PathBuf::from(env::var("CARGO_MANIFEST_DIR").unwrap());
    let kernel_dir = manifest_dir.join("kernel");
    let out_dir = PathBuf::from(env::var("OUT_DIR").unwrap());

    // Build the kernel for x86_64-unknown-none.
    // build-std flags are picked up from .cargo/config.toml in the workspace root.
    let cargo = env::var("CARGO").unwrap_or_else(|_| "cargo".into());
    let status = Command::new(&cargo)
        .args(["build", "--release", "--target", "x86_64-unknown-none"])
        .current_dir(&kernel_dir)
        .status()
        .expect("failed to run cargo build for kernel");

    if !status.success() {
        eprintln!("Kernel build failed");
        process::exit(1);
    }

    // In a Cargo workspace, the target directory is at the workspace root, not inside the crate.
    let workspace_root = manifest_dir.clone();
    let kernel_binary = workspace_root.join("target/x86_64-unknown-none/release/kernel");
    let disk_image = out_dir.join("bios.img");

    BiosBoot::new(&kernel_binary)
        .create_disk_image(&disk_image)
        .unwrap();

    println!("cargo:rustc-env=BIOS_IMAGE={}", disk_image.display());
    println!("cargo:rerun-if-changed=kernel/src");
    println!("cargo:rerun-if-changed=kernel/Cargo.toml");
}
