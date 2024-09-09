mrow.install_package("zed-preview-bin")
mrow.install_packages({"nodejs", "pnpm", "man-db", "cmake", "ninja"})
mrow.symlink("dev/gitconfig", "~/.gitconfig", true)

require("dev/rust")
require("dev/podman")
