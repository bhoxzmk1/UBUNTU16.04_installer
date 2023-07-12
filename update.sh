#!/bin/bash


#sudo apt-mark hold firefox
#sudo apt-mark hold thunderbird

chmod -R 777 /virtualbox

sudo dpkg -i //virtualbox/32bit/VNC-5.3.2-Linux-x86-DEB/VNC-Viewer-5.3.2-Linux-x86.deb
sudo apt-get install -f

sudo dpkg -i //virtualbox/32bit/VNC-5.3.2-Linux-x86-DEB/VNC-Server-5.3.2-Linux-x86.deb
sudo apt-get install -f

sudo dpkg -i //virtualbox/32bit/webmin_1.890_all.deb
sudo apt-get install -f

#change server to main server
sudo sed -i 's|http://ph.|http://|g' /etc/apt/sources.list

#update
sudo apt update
sudo apt upgrade 

#install ing of needs
sudo apt install gdebi 
sudo apt install mc 

#get 32bit folder 
#chmod -R 777 /virtualbox 

sudo add-apt-repository ppa:ubuntu-wine/ppa 
sudo wget https://dl.winehq.org/wine-builds/Release.key 
sudo apt update
sudo apt install wine1.6 
sudo apt --reinstall install msttcorefonts 
sudo apt --reinstall install ttf-mscorefonts-installer 
#configure wine (/Q/data and set to windows98)

sudo apt install preload 
sudo apt install cifs-utils 
sudo apt install nfs-common 
sudo apt install ssh 
sudo apt install rsync 
sudo apt install convmv 
sudo apt install samba 
sudo apt install spark messenger 

sudo apt remove firefox* 
sudo add-apt-repository ppa:plasmazilla/releases 
sudo apt update
sudo apt install firefox-esr 
#sudo apt install chromium-browser 

sudo apt install virtualbox 
sudo apt install unity-tweak-tool 
sudo apt install compizconfig-services-manager 

sudo apt install automake autoconf libtool 


rm -r //virtualbox/32bit/Spark
rm -r //virtualbox/32bit/unixODBC-2.2.11

tar -xvzf //virtualbox/32bit/unixodbc_2.2.11.orig.tar.gz

mv /home/smdv-dt/Desktop/unixODBC-2.2.11/ //virtualbox/32bit


#cd //virtualbox/32bit/unixODBC-2.2.11

#./configure --enable-gui=no -y

#make -y

#make install -y

#sudo apt install unixodbc-bin -y
