require("@/users/lily/keys") -- requires user intervention, do first
require("@/users/lily")
require("nya/hardware")

require("@/modules/hyprland")
require("@/modules/virt")

require("@/modules/dev")

local gaming = require("@/modules/gaming")
gaming.install_deps()
gaming.install_minecraft()

mrow.install_packages({
   "btop",
   "obs-studio",
   "imagemagick",
   "qbittorrent",
})

mrow.install_package("vesktop-bin", true)
