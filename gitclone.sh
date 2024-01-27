#installera git hub hämtning
sudo apt install git

sleep 8 

#laddar hem git repo
git clone https://github.com/blitzes27/wordpress.git -y

sleep 20

cd "wordpress"

#kör installationsskript i wordpress mapp
./install.sh
