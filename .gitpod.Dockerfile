FROM gitpod/workspace-full:latest

# Install KVM and related packages
RUN sudo apt-get update && sudo apt-get install -y \
    qemu-kvm \
    libvirt-bin \
    bridge-utils \
    virt-manager \
    && sudo apt-get clean

# Ensure the user has permissions to use KVM
RUN sudo adduser gitpod kvm
