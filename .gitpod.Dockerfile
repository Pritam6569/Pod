# Use an official Gitpod base image
FROM gitpod/workspace-full:latest

# Update package lists
RUN sudo apt-get update

# Upgrade the system packages
RUN sudo apt-get upgrade -y

# Install qemu-kvm
RUN sudo apt-get install -y qemu-kvm

# Install libvirt-bin
RUN sudo apt-get install -y libvirt-bin

# Install bridge-utils
RUN sudo apt-get install -y bridge-utils

# Install virt-manager
RUN sudo apt-get install -y virt-manager

# Clean up the package lists
RUN sudo apt-get clean

# Ensure the user has permissions to use KVM
RUN sudo adduser gitpod kvm
