# Update and upgrade the system
RUN sudo apt-get update \
    && sudo apt-get upgrade -y

# Install required packages
RUN sudo apt-get install -y \
    qemu-kvm \
    libvirt-daemon-system \
    libvirt-clients \
    bridge-utils \
    virt-manager

# Clean up
RUN sudo apt-get clean
