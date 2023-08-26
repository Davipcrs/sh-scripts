echo "instalador executado!"


#installer
bash system_maintainer.sh

#repository adding
#apt installers

bash $PWD/installers/apt_installer.sh
bash $PWD/installers/flatpak_installer.sh
bash $PWD/installers/snap_installer.sh
base $PWD/installers/wget_installer.sh





#scripts



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

