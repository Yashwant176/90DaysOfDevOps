# Day 13 – Linux Volume Management (LVM)

## Commands Used
- lsblk
- pvcreate /dev/loop0
- vgcreate devops-vg /dev/loop0
- lvcreate -L 500M -n app-data devops-vg
- mkfs.ext4 /dev/devops-vg/app-data
- mount /dev/devops-vg/app-data /mnt/app-data
- lvextend -L +200M /dev/devops-vg/app-data
- resize2fs /dev/devops-vg/app-data

## Screenshots
- PV creation
- VG creation
- LV creation
- Mounted filesystem
- Extended volume size

## What I Learned
- LVM separates physical disks from usable storage
- Logical volumes can be resized without recreating disks
- LVM makes storage management flexible and production-ready
