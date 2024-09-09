mrow.install_packages({
   "fish",
   "hyfetch",
   "bat",
   "exa",
   "ripgrep",
})

mrow.symlink("dots/fish", "~/.config/fish", true)
mrow.symlink("dots/kitty", "~/.config/kitty", true)
mrow.symlink("dots/bat", "~/.config/bat", true)
mrow.symlink("dots/hyfetch.json", "~/.config/hyfetch.json", true)

mrow.run_command("sudo chsh -s /usr/bin/fish lily")
mrow.run_command("bat cache --build")
