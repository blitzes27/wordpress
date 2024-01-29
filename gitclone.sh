#!/bin/bash

#installera git hub hämtning
apt install git

sleep 8 

#laddar hem git repo
git clone https://github.com/blitzes27/wordpress.git -y

sleep 20

# Joinar docker swarm
docker swarm join --token SWMTKN-1-3ep1qt2gastn5nmmxjady82jnh42ucpwvlkl8nvupjfap03qr4-dfgs5g232rdoytcduxv69winl 10.6.68.24:2377

sleep 4

#uppdaterar paket
sudo apt update

#Installerar zip för att kunna unzippa image
sudo apt install zip

cd "wordpress"

#skapar en dum container joinad nätverket uppgift för att kunna
#ansluta med vår wordpress
docker run --name some-postgres –network uppgift -e POSTGRES_PASSWORD=mysecretpassword -d postgres

sleep 8


    # Packa upp zip-filen
    unzip "image.zip"

        cd "image"

        # Kör docker-compose up -d
        docker compose up -d
