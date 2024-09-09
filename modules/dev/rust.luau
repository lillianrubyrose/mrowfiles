mrow.install_packages({
   "git",
   "mold",
   "clang",
   "rustup",
})

mrow.copy_file("rust/config.toml", "~/.cargo/config.toml")
mrow.run_command("rustup default stable")
mrow.run_command("rustup toolchain install nightly")
