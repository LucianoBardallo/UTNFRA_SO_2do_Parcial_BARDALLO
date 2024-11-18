#!/bin/bash

DISCO1="/dev/sdc"    # Disco de 2 GB
DISCO2="/dev/sdd"    # Disco de 1 GB

sudo wipefs -a $DISCO1
sudo wipefs -a $DISCO2

sudo fdisk $DISCO1 <<EOF
n
p



t
8E
w
EOF

sudo fdisk $DISCO2 <<EOF
n
p



t
82
w
EOF

sudo pvcreate /dev/sdc1 /dev/sdd1
sudo vgcreate vg_datos /dev/sdc1
sudo vgcreate vg_temp /dev/sdd1

sudo lvcreate -L 50M /dev/vg_datos -n lv_docker
sudo lvcreate -L 1.5G /dev/vg_datos -n lv_workareas
sudo lvcreate -L 512M /dev/vg_temp -n lv_swap

sudo mkfs -t ext4 /dev/mapper/vg_datos-lv_docker
sudo mkfs -t ext4 /dev/mapper/vg_datos-lv_workareas
sudo mkswap /dev/mapper/vg_temp-lv_swap

sudo mkdir -p /var/lib/docker
sudo mkdir -p /work/
sudo mount /dev/mapper/vg_datos-lv_docker /var/lib/docker
sudo mount /dev/mapper/vg_datos-lv_workareas /work
sudo swapon /dev/mapper/vg_temp-lv_swap

free -h

sudo sed -i '/vg_datos-lv_docker/d' /etc/fstab
sudo sed -i '/vg_datos-lv_workareas/d' /etc/fstab
sudo sed -i '/vg_temp-lv_swap/d' /etc/fstab

echo "/dev/mapper/vg_datos-lv_docker /var/lib/docker ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/mapper/vg_datos-lv_workareas /work ext4 defaults 0 0" | sudo tee -a /etc/fstab
echo "/dev/mapper/vg_temp-lv_swap swap swap defaults 0 0" | sudo tee -a /etc/fstab
