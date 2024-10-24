#!/bin/bash

read -p "Enter name of user1: " user1

read -p "Enter name of user2: " user2

sudo useradd $user1

sudo useradd $user2

cut -d: -f1 < /etc/passwd | grep $user1
cut -d: -f1 < /etc/passwd | grep $user2
