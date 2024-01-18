#!/bin/bash

# Mount /sys/fs/cgroup as tmpfs
#mount -t tmpfs tmpfs /sys/fs/cgroup

# Create /run/systemd/system directory
mkdir -p /run/systemd/system

# Set the container environment variable
echo "container=docker" > /run/systemd/container

# Execute /sbin/init as PID1 and pass any arguments
exec /sbin/init "$@"
