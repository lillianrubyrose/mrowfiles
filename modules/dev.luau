mrow.install_packages({"man-db", "cmake", "ninja"})
mrow.install_package("zed-preview-bin", true)

require("dev/rust")
require("dev/podman")
require("dev/node")
