#system maintenance
echo ''
echo '================================================================================'
echo "Start System maintenance"

sudo apt -y update
sudo apt -y upgrade
sudo apt -y autoclean
sudo apt -y autoremove

echo '================================================================================'
echo ''
echo "End System maintenance"
echo ''
echo '================================================================================'