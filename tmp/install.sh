#!/bin/bash
username=gnuhealth
password=password

adduser --gecos "" --disabled-password $username
chpasswd <<<"$username:$password"

usermod -aG sudo $username
usermod -aG postgres $username

service postgresql start

echo "%sudo ALL=NOPASSWD: ALL" >> /etc/sudoers

ln -s /tmp/install_2.sh /home/$username/install.sh
ln -s /tmp/run.sh /home/$username/run.sh
su - gnuhealth
cd $HOME
