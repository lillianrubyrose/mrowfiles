mrow.install_packages({
   "qemu-full",
   "qemu-img",
   "libvirt",
   "virt-install",
   "virt-manager",
   "virt-viewer",
   "edk2-ovmf",
   "swtpm",
   "guestfs-tools",
   "libosinfo",
   "dnsmasq",
})

mrow.run_script("virt/enable-services.sh")
