mrow.install_package("greetd-tuigreet")
mrow.copy_file("greetd/config.toml", "/etc/greetd/config.toml", true)
mrow.run_command("sudo systemctl enable greetd")
