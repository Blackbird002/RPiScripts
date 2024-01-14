#! /bin/bash

# Run this first on a new RPi
echo -e "Installing git, vim, sysbech, cowsay..\n"
date
sleep 5
sudo apt install git vim sysbench cowsay -y

echo -e "Creating ~/github DIR..\n"
mkdir ~/github

