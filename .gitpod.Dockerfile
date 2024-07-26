# Use an official Gitpod base image
FROM gitpod/workspace-full:latest

# Update and install required packages
RUN sudo apt-get update \
    && sudo apt-get upgrade -y \
    && sudo apt-get install -y qemu-kvm libvirt-bin bridge-utils virt-manager \
    && sudo apt-get clean

# Ensure the user has permissions to use KVM
RUN sudo adduser gitpod kvm
