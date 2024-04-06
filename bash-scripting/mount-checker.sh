#!/bin/bash

read -p "Enter the mount point or file system to check: " user_mount_point

check_mount() {
    mount_point=$1

    if df -h | grep -q "$mount_point"; then
        space_info=$(df -h "$mount_point" | awk 'NR==2 {print "Used: " $3, "Free: " $4}')
        echo "Mount point $mount_point is mounted. Space information:"
        echo "$space_info"
    else
        echo "Error: Mount point $mount_point is not mounted."
    fi
}

check_mount "$user_mount_point"
