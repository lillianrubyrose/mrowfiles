mrow.install_packages({
   "alsa-scarlett-gui",
   "vulkan-radeon",
   "xf86-video-amdgpu",
   "libva-mesa-driver",
   "mesa-vdpau",

   "lib32-mesa",
   "lib32-vulkan-radeon",
   "lib32-libva-mesa-driver",
   "lib32-mesa-vdpau"
})

mrow.copy_file("pipewire/sample-rate.conf", "/etc/pipewire/pipewire.conf.d/10-sample-rate.conf", true)
