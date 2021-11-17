#!/bin/bash

    bash 0-preinstall.sh
    arch-chroot /mnt /root/ArchRBViking/1-setup.sh
    source /mnt/root/ArchRBViking/install.conf
    arch-chroot /mnt /usr/bin/runuser -u $username -- /home/$username/ArchRBViking/2-user.sh
    arch-chroot /mnt /root/ArchRBViking/3-post-setup.sh
