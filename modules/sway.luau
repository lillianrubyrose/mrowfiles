mrow.install_packages({
   "greetd-tuigreet",
   "sway",
   "nautilus",

   "rofi-wayland",                -- avoid conflict with rofi later
   "xdg-desktop-portal-wlr",
   "kitty",                       -- term
   "nwg-look",                    -- gtk settings
   "dunst",                       -- notifs
   "libnotify",
   "pinta",                       -- simple photo editor
   "swww",                        -- wallpaper
   "waybar",
   "otf-font-awesome",
   "ttf-fira-sans",               -- waybar font
   "ttf-fira-code",
   "ttf-firacode-nerd",

   "noto-fonts",
   "noto-fonts-cjk",
   "noto-fonts-emoji",

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
   "xdg-desktop-portal-gtk",
   "less",
})

mrow.copy_file("sway/greetd.toml", "/etc/greetd/config.toml", true)
mrow.copy_file("sway/run-sway.sh", "/usr/bin/run-sway", true)
mrow.run_command("sudo systemctl enable greetd")

mrow.symlink("sway/config", "~/.config/sway", true)
mrow.symlink("sway/waybar", "~/.config/waybar", true)

mrow.symlink("wm-shared/dunst", "~/.config/dunst", true)
mrow.symlink("wm-shared/rofi", "~/.config/rofi", true)
mrow.symlink("wm-shared/tofi", "~/.config/tofi", true)
