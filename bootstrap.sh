#! /bin/sh

mkfs.btrfs -L nixos /dev/vda
mount /dev/vda /mnt

nixos-generate-config --root /mnt

cp ./configuration.nix /mnt/etc/nixos/configuration.nix

nixos-install


