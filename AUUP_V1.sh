#!/bin/bash

# Ask for sudo access at the beginning
sudo -v || { echo "You need sudo access to run this script."; exit 1; }

echo "Welcome to AUUP System Maintenance"
echo "-----------------------------------"
echo "Please choose an option:"
echo "1) Update system (apt update)"
echo "2) Upgrade packages (apt upgrade)"
echo "3) Remove unused packages (apt autoremove)"
echo "4) Clean apt cache (apt autoclean)"
echo "5) All of the above"
echo "6) Exit"

read -p "Enter your choice (1-6): " choice

case $choice in
    1)
        echo "Updating package lists..."
        sudo apt update
        ;;
    2)
        echo "Upgrading installed packages..."
        sudo apt upgrade -y
        ;;
    3)
        echo "Removing unnecessary packages..."
        sudo apt autoremove -y
        ;;
    4)
        echo "Cleaning up cached files..."
        sudo apt autoclean
        ;;
    5)
        echo "Performing full system maintenance..."
        sudo apt update
        sudo apt upgrade -y
        sudo apt autoremove -y
        sudo apt autoclean
        echo "All tasks completed!"
        ;;
    6)
        echo "Exiting. Thank you for using AUUP!"
        ;;
    *)
        echo "Invalid option. Exiting."
        ;;
esac
