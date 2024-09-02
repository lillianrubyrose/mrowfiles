#!/bin/bash

repo_list=$(pacman-conf --repo-list)

if ! echo "$repo_list" | grep -q "multilib"; then
sudo tee -a /etc/pacman.conf >/dev/null <<EOF
[multilib]
Include = /etc/pacman.d/mirrorlist
EOF
fi
