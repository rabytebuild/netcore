#!/bin/bash

# Install Jupyter Notebook
echo "Installing Jupyter Notebook..."
python3 -m pip install notebook

# Download Ngrok
echo "Downloading Ngrok..."
wget https://bin.equinox.io/c/bNyj1mQVY4c/ngrok-v3-stable-linux-amd64.tgz

# Extract Ngrok
echo "Extracting Ngrok..."
tar -xvf ngrok-v3-stable-linux-amd64.tgz

# Set Ngrok authtoken
echo "Setting Ngrok authtoken..."
./ngrok authtoken 2Hd7yeF4INCKbg2aP9rGMLnDqBX_5K7WhATjW8eUxS6UoHSRa

# Start Ngrok and Jupyter Notebook
echo "Starting Ngrok and Jupyter Notebook..."
./ngrok http 8888 & python3 -m notebook --allow-root
