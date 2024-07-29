FROM gitpod/workspace-full

# Install kvm
RUN apt-get update && apt-get install -y qemu-kvm libvirt-daemon-system libvirt-clients bridge-utils

# Configure kvm
RUN adduser $(whoami) libvirt
RUN adduser $(whoami) kvm
