#!/bin/bash

# Navigera till mappen där docker-compose.yml ligger
#cd "$(dirname "$0")/test3"

# Kör docker-compose up -d
#docker compose up -d

#skapar en dum container joinad nätverket uppgift för att kunna
#ansluta med vår wordpress
docker run --name some-postgres –network uppgift -e POSTGRES_PASSWORD=mysecretpassword -d postgres

sleep 8

# Definiera variabler
zip_file="test3.zip"
target_directory="test3"

# Kontrollera om zip-filen finns
if [ -f "$zip_file" ]; then
    # Packa upp zip-filen
    unzip "$zip_file"

    # Kontrollera om uppzippning lyckades och mappen finns
    if [ -d "$target_directory" ]; then
        # Navigera till mappen
        cd "$target_directory"

        # Kör docker-compose up -d
        docker compose up -d
    else
        echo "Uppzippning misslyckades eller mappen '$target_directory' finns inte."
    fi
else
    echo "Zip-filen '$zip_file' hittades inte."
fi