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
   "xdg-desktop-portal-gtk",
   "less",
})

mrow.install_packages({"grimblast-git", "ttf-jetbrains-mono-nerd", "tofi", "smile"}, true)

mrow.install_package("greetd-tuigreet")
mrow.copy_file("hyprland/greetd.toml", "/etc/greetd/config.toml", true)
mrow.run_command("sudo systemctl enable greetd")

mrow.symlink("hyprland/config", "~/.config/hypr", true)
mrow.symlink("hyprland/waybar", "~/.config/waybar", true)

mrow.symlink("wm-shared/dunst", "~/.config/dunst", true)
mrow.symlink("wm-shared/rofi", "~/.config/rofi", true)
mrow.symlink("wm-shared/tofi", "~/.config/tofi", true)
