#!/bin/bash


#sudo apt-mark hold firefox
#sudo apt-mark hold thunderbird

sudo sed -i 's|http://ph.|http://|g' /etc/apt/sources.list

chmod -R 777 /virtualbox

sudo dpkg -i //virtualbox/32bit/AdbeRdr9.4.2-1_i386linux_enu.deb
sudo apt-get install -f

sudo dpkg -i //virtualbox/32bit/VNC-5.3.2-Linux-x86-DEB/VNC-Viewer-5.3.2-Linux-x86.deb
sudo apt-get install -f

sudo dpkg i- //virtualbox/32bit/VNC-5.3.2-Linux-x86-DEB/VNC-Server-5.3.2-Linux-x86.deb
sudo apt-get install -f

sudo dpkg -i //virtualbox/32bit/webmin_1.881_all.deb
sudo apt-get install -f


#change server to main server



#sudo sed -i 's|http://ph.|http://|g' /etc/apt/sources.list



#update

sudo apt update
sudo apt upgrade -y

#installing of needs

sudo apt install gdebi -y
sudo apt install mc -y

sudo add-apt-repository ppa:ubuntu-wine/ppa -y
sudo wget https://dl.winehq.org/wine-builds/Release.key -y
sudo apt update
sudo apt install wine1.6 -y
sudo apt --reinstall install msttcorefonts -y
sudo apt --reinstall install ttf-mscorefonts-installer -y

#configure wine (/Q/data and set to windows98)

sudo apt install preload -y
sudo apt install cifs-utils -y
sudo apt install nfs-common -y
sudo apt install ssh -y
sudo apt install rsync -y
sudo apt install convmv -y
sudo apt install samba -y
sudo apt install spark messenger -y

sudo apt remove firefox* -y
sudo add-apt-repository ppa:plasmazilla/releases -y
sudo apt update
sudo apt install firefox-esr -y
sudo apt install chromium-browser -y

sudo apt install virtualbox -y
sudo apt install unity-tweak-tool -y
sudo apt install compizconfig-services-manager -y

sudo apt install automake autoconf libtool -y


rm -r //virtualbox/32bit/Spark
rm -r //virtualbox/32bit/unixODBC-2.2.11

tar -xvzf //virtualbox/32bit/spark_2_8_3.tar.gz
tar -xvzf //virtualbox/32bit/unixodbc_2.2.11.orig.tar.gz


#do manually


#cd //virtualbox/32bit/unixODBC-2.2.11

#./configure --enable-gui=no

#make

#make install

#sudo apt install unixodbc-bin -y






