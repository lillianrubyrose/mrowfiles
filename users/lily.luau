mrow.install_package("mercury-browser-avx2-bin", true)
mrow.install_packages({
   "kitty",
   "fish",
   "hyfetch",
   "bat",
   "exa",
   "ripgrep",
})

mrow.copy_file("lily/configs/firefox-prefs.js", "/etc/mercury/defaults/pref/syspref.js", true)
mrow.symlink("lily/configs/gitconfig", "~/.gitconfig", true)
mrow.symlink("lily/configs/fish", "~/.config/fish", true)
mrow.symlink("lily/configs/kitty", "~/.config/kitty", true)
mrow.symlink("lily/configs/bat", "~/.config/bat", true)
mrow.symlink("lily/configs/hyfetch.json", "~/.config/hyfetch.json", true)

mrow.run_command("sudo chsh -s /usr/bin/fish lily")
mrow.run_command("bat cache --build")
