#/bin/bash

<<comment

This script starts and stops service upon user input.
comment

read -p "Enter the name of the service: " service

read -p "Do you want to stop or start? (Start/stop): " status

sudo systemctl $status $service

systemctl status $service
