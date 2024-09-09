mrow.install_packages({"nodejs", "pnpm", "man-db", "cmake", "ninja"})
mrow.install_package("zed-preview-bin")

require("dev/rust")
require("dev/podman")
