#!/bin/bash
mkdir ~/mosquitto && cd ~/mosquitto
wget http://repo.mosquitto.org/debian/mosquitto-repo.gpg.key
sudo apt-key add mosquitto-repo.gpg.key
cd /etc/apt/sources.list.d/
sudo wget http://repo.mosquitto.org/debian/mosquitto-jessie.list
sudo apt-get update

cd ~/mosquitto

wget http://ftp.fr.debian.org/debian/pool/main/libw/libwebsockets/libwebsockets3_1.2.2-1_armhf.deb
wget http://ftp.fr.debian.org/debian/pool/main/o/openssl/libssl1.0.0_1.0.1t-1+deb8u8_armhf.deb

sudo dpkg -i ~/mosquitto/libwebsockets3_1.2.2-1_armhf.deb
sudo dpkg -i ~/mosquitto/libssl1.0.0_1.0.1t-1+deb8u8_armhf.deb

sudo apt-get install mosquitto
sudo apt-get install mosquitto-clients
