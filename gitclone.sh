#!/bin/bash

#installera git hub hämtning
apt install git

sleep 8 

#laddar hem git repo
git clone https://github.com/blitzes27/wordpress.git -y

sleep 20

cd "wordpress"

#skapar en dum container joinad nätverket uppgift för att kunna
#ansluta med vår wordpress
docker run --name some-postgres –network uppgift -e POSTGRES_PASSWORD=mysecretpassword -d postgres

sleep 8


    # Packa upp zip-filen
    unzip "test3"

        cd "test3"

        # Kör docker-compose up -d
        docker compose up -d
