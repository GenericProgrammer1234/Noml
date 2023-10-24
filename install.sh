#!/bin/bash
# Main installation process
echo "Welcome to the Noml installer!"

# Ask for installation directory
read -p "Enter the installation directory for Noml: " install_dir

# Create the installation directory if it doesn't exist
mkdir -p "$install_dir"

# Download Noml
git clone https://github.com/GenericProgrammer1234/Noml "$install_dir"

# Add Noml path to PYTHONPATH
export PYTHONPATH="$install_dir:$PYTHONPATH"
echo 'export PYTHONPATH="$install_dir:$PYTHONPATH"' >> ./profile

# Alias Noml
alias noml="python $install_dir/app.py"
echo 'alias noml="python $install_dir/app.py"' >> ./profile

echo "Installation has finished!"
echo "You can now run 'noml' to start the text editor."
