echo "instalador executado!"


#installer
bash system_maintainer.sh

#repository adding
#apt installers

bash apt_installer.sh

#wget installers
#uncomment this 

#wget -o  ./virtualbox.deb https://download.virtualbox.org/virtualbox/7.0.10/virtualbox-7.0_7.0.10-158379~Ubuntu~jammy_amd64.deb
#sudo dpkg -i virtualbox.deb
#wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
#sudo dpkg -i google-chrome-stable_current_amd64.deb

#flatpak installers
flatpak remote-add --user --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install -y flathub com.discordapp.Discord
flatpak install -y flathub com.obsproject.Studio
flatpak install -y flathub org.videolan.VLC

#snap installers
sudo snap install flutter --edge --classic
sudo snap install spotify


#scripts
sudo updatedb


echo ""
echo ""
neofetch
echo "================================================================================"
echo "Suporte para a instalação do Android Studio foi ativado. Lembre-se de instalar"
echo "Via o Site Oficial."
echo ""
echo "Instalador concluído"
echo "================================================================================"

bash system_data.sh

