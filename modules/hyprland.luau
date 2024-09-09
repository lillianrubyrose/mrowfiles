mrow.install_packages({
   "rofi-wayland",                -- avoid conflict with rofi later
   "hyprland",
   "xdg-desktop-portal-hyprland",
   "kitty",                       -- term
   "nwg-look",                    -- gtk settings
   "dunst",                       -- notifs
   "libnotify",
   "hypridle",
   "pinta",                       -- simple photo editor
   "swww",                        -- wallpaper
   "waybar",
   "otf-font-awesome",
   "ttf-fira-sans",               -- waybar font
   "ttf-fira-code",
   "ttf-firacode-nerd",
   "tofi",

   "noto-fonts",
   "noto-fonts-cjk",
   "noto-fonts-emoji",
   "noto-fonts-extra",

   -- misc
   "blueman",
   "bluez",
   "bluez-utils",
   "nm-connection-editor",
   "wl-clipboard",
   "pavucontrol",
   "polkit-gnome",
   "xdg-user-dirs",
   "gvfs",
   "tumbler",
   "gtk4",
   "libadwaita",
   "qt6ct",
   "flatpak",
   "smile",
   "xdg-desktop-portal-gtk",
   "less",
})

mrow.install_packages({"grimblast-git", "ttf-jetbrains-mono-nerd"}, true)

mrow.symlink("dots/hypr", "~/.config/hypr", true)
mrow.symlink("dots/dunst", "~/.config/dunst", true)
mrow.symlink("dots/waybar", "~/.config/waybar", true)
mrow.symlink("dots/rofi", "~/.config/rofi", true)
mrow.symlink("dots/tofi", "~/.config/tofi", true)

require("greetd")
