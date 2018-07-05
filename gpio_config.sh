#!/bin/bash
sudo addgroup gpio
sudo usermod -a -G gpio $USER
sudo usermod -a -G snips-skills-admin $USER
sudo usermod -a -G gpio,audio _snips-skills
sudo touch  /etc/udev/rules.d/99-com.rules
echo "KERNEL==\"gpio*\", RUN=\"/bin/sh -c 'chgrp -R gpio /sys/%p /sys/class/gpio && chmod -R g+w /sys/%p /sys/class/gpio'\"" | sudo tee /etc/udev/rules.d/99-com.rules

