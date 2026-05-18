use std::{
    env,
    path::PathBuf,
    process::{self, Command},
};
use bootloader::UefiBoot;

fn main() {
    let manifest_dir = PathBuf::from(env::var("CARGO_MANIFEST_DIR").unwrap());
    let kernel_dir = manifest_dir.join("kernel");
    let out_dir = PathBuf::from(env::var("OUT_DIR").unwrap());

    // Build the kernel for x86_64-unknown-none.
    let cargo = env::var("CARGO").unwrap_or_else(|_| "cargo".into());
    let status = Command::new(&cargo)
        .args([
            "build",
            "--release",
            "--target",
            "x86_64-unknown-none",
            "-Z",
            "build-std=core,compiler_builtins,alloc",
            "-Z",
            "build-std-features=compiler-builtins-mem",
        ])
        .current_dir(&kernel_dir)
        .status()
        .expect("failed to run cargo build for kernel");

    if !status.success() {
        eprintln!("Kernel build failed");
        process::exit(1);
    }

    let workspace_root = manifest_dir.clone();
    let kernel_binary = workspace_root.join("target/x86_64-unknown-none/release/kernel");

    let disk_image = out_dir.join("uefi.img");
    UefiBoot::new(&kernel_binary)
        .create_disk_image(&disk_image)
        .unwrap();

    println!("cargo:rustc-env=UEFI_IMAGE={}", disk_image.display());

    // Download/cache OVMF firmware for the runner to use.
    let ovmf_dir = out_dir.join("ovmf");
    let ovmf = ovmf_prebuilt::Prebuilt::fetch(ovmf_prebuilt::Source::LATEST, &ovmf_dir)
        .expect("failed to fetch OVMF prebuilt");
    let ovmf_code = ovmf.get_file(ovmf_prebuilt::Arch::X64, ovmf_prebuilt::FileType::Code);
    let ovmf_vars = ovmf.get_file(ovmf_prebuilt::Arch::X64, ovmf_prebuilt::FileType::Vars);

    println!("cargo:rustc-env=OVMF_CODE={}", ovmf_code.display());
    println!("cargo:rustc-env=OVMF_VARS={}", ovmf_vars.display());

    println!("cargo:rerun-if-changed=kernel/src");
    println!("cargo:rerun-if-changed=kernel/Cargo.toml");
}
