#!/bin/bash


#skapar en dum container joinad nätverket uppgift för att kunna
#ansluta med vår wordpress
docker run --name some-postgres –network uppgift -e POSTGRES_PASSWORD=mysecretpassword -d postgres

sleep 8


    # Packa upp zip-filen
    unzip "test3"

        cd "test3"

        # Kör docker-compose up -d
        docker compose up -d
