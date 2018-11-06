#!/bin/bash
sudo apt-get install --no-install-recommends xorg -y
sudo apt-get install --no-install-recommends lightdm -y
sudo apt-get install --no-install-recommends lightdm-gtk-greeter-settings -y
sudo apt-get install --no-install-recommends openbox -y
sudo apt-get install --no-install-recommends obconf -y
sudo apt-get install --no-install-recommends obmenu -y
sudo apt-get install --no-install-recommends tint2 -y
sudo apt-get install --no-install-recommends nitrogen -y
sudo apt-get install --no-install-recommends plank -y 
sudo apt-get install --no-install-recommends pcmanfm -y
sudo apt-get install --no-install-recommends firefox -y
sudo apt-get install --no-install-recommends volti -y
sudo apt-get install --no-install-recommends wicd -y 
sudo apt-get install --no-install-recommends lxappearance -y
sudo apt-get install --no-install-recommends compton -y
sudo add-apt-repository ppa:tista/adapta -y
sudo add-apt-repository ppa:snwh/ppa -y
sudo apt update -y
sudo apt install adapta-gtk-theme -y
sudo apt install paper-icon-theme -y
mkdir /home/kosmos/.config
mkdir /home/kosmos/.config/openbox
mkdir /home/kosmos/.config/tint2
cp /home/kosmos/kosmosde/autostart.sh /home/kosmos/.config/openbox/autostart.sh
cp /home/kosmos/kosmosde/rc.xml /home/kosmos/.config/openbox/
cp /home/kosmos/kosmosde/kosmos_panel.tint2rc /home/kosmos/.config/tint2/
reboot
