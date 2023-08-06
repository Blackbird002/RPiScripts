#!/bin/bash -e

echo -e "Starting update script..."

date

# Update Pi-Hole
echo Updating Pi-Hole...
/usr/bin/sudo pihole -up

sleep 10

# Do apt-get update
echo Getting update list...
/usr/bin/sudo apt-get update --fix-missing

sleep 10

# Then the upgrade
echo Upgrading...
/usr/bin/sudo apt-get -y upgrade

sleep 10

# Reboot
echo Rebooting system...
/usr/bin/sudo shutdown -r

