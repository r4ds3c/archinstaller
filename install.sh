#!/bin/bash

# Update the system
sudo pacman -Syu

# Install required packages
sudo pacman -S nvidia nvidia-dkms wayland

# Load the NVIDIA kernel module manually (optional)
sudo modprobe nvidia

# Install and enable GDM (GNOME Display Manager) or another display manager (optional)
sudo pacman -S gdm  # Replace with your preferred display manager if needed
sudo systemctl enable gdm
sudo systemctl start gdm

# Install a Wayland-compatible desktop environment (optional)
# Example: Install GNOME
# sudo pacman -S gnome

# Reboot to apply changes
sudo reboot
