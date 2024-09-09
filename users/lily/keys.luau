mrow.install_packages({
   "gnupg",
   "openssh",
   "yubico-pam",
   "libfido2",
   "age"
})

mrow.run_script("keys/import.sh")
mrow.run_command("sudo systemctl enable pcscd.service")
