sudo add-apt-repository universe -y 

sudo dpkg --add-architecture i386 
sudo apt -y update

#gnome installs
sudo apt -y install gnome-tweaks
sudo apt -y install gnome-screenshot

#general installs
sudo apt -y install git
sudo apt -y install wget
sudo apt -y install flatpak
sudo apt -y install snapd
sudo apt -y install neofetch
sudo apt -y install htop
sudo apt -y install plocate
sudo apt -y install locate
sudo apt -y install python3
sudo apt -y install python3-pip
sudo apt -y install wine32 wine64

#Android Studio support
sudo apt -y install libc6:i386 libncurses5:i386 libstdc++6:i386 lib32z1 libbz2-1.0:i386
