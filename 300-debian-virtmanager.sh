#!/bin/bash
sudo apt install -y gnome-boxes virt-manager ebtables dnsmasq nftables qemu qemu-kvm qemu-system-x86 ovmf seabios libvirt-daemon-system libvirt-daemon-system-systemd 
sudo apt install -y libvirt-daemon-driver-qemu libvirt-daemon libvirt-clients bridge-utils  

sudo usermod -a -G kvm phil
sudo usermod -a -G libvirt phil

sudo systemctl enable libvirtd
sudo systemctl start libvirtd

##Might need  '# virsh net-start default'
#to restart default server

cd kvmarch
sudo virsh net-define br10.xml
sudo virsh net-start br10
sudo virsh net-autostart br10
cd ..
