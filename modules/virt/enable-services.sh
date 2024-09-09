#!/bin/bash

for drv in qemu interface network nodedev nwfilter secret storage; do
    sudo systemctl enable virt${drv}d.service;
    sudo systemctl enable virt${drv}d{,-ro,-admin}.socket;
done

sudo usermod -aG libvirt $USER
sudo setfacl -R -b /var/lib/libvirt/images/
sudo setfacl -R -m u:${USER}:rwX /var/lib/libvirt/images/
sudo setfacl -m d:u:${USER}:rwx /var/lib/libvirt/images/
