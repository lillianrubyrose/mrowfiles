#!/bin/bash

if [ -e ~/.ssh/id_ed25519_sk ]; then
  exit 0
fi

gpg --import 985A88CE54A3CB82-me@lillianrose.asc.pub

echo "Running ssh-keygen -K"
ssh-keygen -K

mkdir -p ~/.ssh
sudo mv id_ed25519_sk_rk ~/.ssh/id_ed25519_sk
sudo mv id_ed25519_sk_rk.pub ~/.ssh/id_ed25519_sk.pub
sudo chmod 700 ~/.ssh
sudo chmod 600 ~/.ssh/id_ed25519_sk
sudo chmod 644 ~/.ssh/id_ed25519_sk.pub
sudo chown -R $USER: ~/.ssh
