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
sudo apt-get install --no-install-recommends build-essential -y
sudo apt-get install --no-install-recommends cpanminus -y
sudo apt-get install libgtk2-perl -y
sudo add-apt-repository ppa:tista/adapta -y
sudo add-apt-repository ppa:snwh/ppa -y
sudo apt update -y
sudo apt install adapta-gtk-theme -y
sudo apt install paper-icon-theme -y
mkdir /home/kosmos/.config
mkdir /home/kosmos/.config/openbox
mkdir /home/kosmos/.config/tint2
cp /home/kosmos/kosmosde/autostart.sh /home/kosmos/.config/openbox/autostart.sh
cp /home/kosmos/kosmosde/kosmos_panel.tint2rc /home/kosmos/.config/tint2/
cp /home/kosmos/kosmosde/kosmos.svg /home/kosmos/.config/tint2/

# INSTALL JGMENU ------------------------------------------------------------------

git clone https://github.com/johanmalm/jgmenu.git
rm /home/kosmos/jgmenu/data/jgmenu.svg
cp /home/kosmos/kosmosde/kosmos.svg /home/kosmos/jgmenu/data/
mv /home/kosmos/jgmenu/data/kosmos.svg /home/kosmos/jgmenu/data/jgmenu.svg
cd /home/kosmos/jgmenu/
./scripts/install-debian-dependencies.sh
make
sudo make prefix=/usr install

# INSTALL OBMENU-GENERATOR
cd /home/kosmos/
git clone git://github.com/trizen/obmenu-generator
sudo cp obmenu-generator/obmenu-generator /usr/bin
mkdir /home/kosmos/.config/obmenu-generator
sudo cp -r obmenu-generator/schema.pl ~/.config/obmenu-generator/
sudo cpanm Linux::DesktopFiles
sudo cpanm Data::Dump
sudo chmod 777 /usr/bin/obmenu-generator
sudo obmenu-generator -d -i
openbox --reconfigure

sudo apt update
sudo apt upgrade
reboot
