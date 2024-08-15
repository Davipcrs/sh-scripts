echo "instalador executado!"

bash system_maintainer.sh

bash $PWD/installers/apt_installer.sh
bash $PWD/installers/flatpak_installer.sh
bash $PWD/installers/snap_installer.sh
bash $PWD/installers/wget_installer.sh
bash $PWD/installers/pip_installer.sh

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

