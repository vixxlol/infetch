#!/bin/bash

# Download the main.sh script to /usr/bin/infetch
sudo curl -o /usr/bin/infetch https://raw.githubusercontent.com/vixxlol/infetch/main/main.sh

# Make the infetch command executable
sudo chmod +x /usr/bin/infetch

# Print a success message
echo -e "\033[0;32mInstalled successfully!\033[0m"

# Run the infetch command
infetch
