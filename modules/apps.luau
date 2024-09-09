mrow.install_packages({
   "btop",
   "obs-studio",
   "imagemagick",
   "qbittorrent",
})

mrow.install_packages({"mercury-browser-avx2-bin", "vesktop-bin"})
mrow.copy_file("mercury/syspref.js", "/etc/mercury/defaults/pref/syspref.js", true)
