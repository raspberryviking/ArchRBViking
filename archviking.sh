#!/bin/bash

    bash 0-preinstall.sh
    arch-chroot /mnt /root/ArchViking/1-setup.sh
    source /mnt/root/ArchViking/install.conf
    arch-chroot /mnt /usr/bin/runuser -u $username -- /home/$username/ArchViking/2-user.sh
    arch-chroot /mnt /root/ArchViking/3-post-setup.sh
