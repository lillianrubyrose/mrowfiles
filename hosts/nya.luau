require("@/users/lily") -- requires user intervention, do first
require("nya/hardware")

require("@/modules/hyprland")

require("@/modules/dots")
require("@/modules/apps")
require("@/modules/dev")
require("@/modules/virt")

local gaming = require("@/modules/gaming")
gaming.install_deps()
gaming.install_minecraft()
