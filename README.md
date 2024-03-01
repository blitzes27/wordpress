# wordpress
 Linux2

Run the gitclone.sh file and it will download the repo, unzip image.zip and run the docker compose file inside the wordpress folder. 
If you want a backup of the wordpress folder use the backup_wordpress.sh skript inside a cron job. Be sure to change the path inside the skript.

The docker compose part oft the skript gitclone.sh is not usuable if not edited. It was created for a school projekt where we used 3 different computers and a docker swarm network. If you replace the env variables, ip, remove network uppgift, remove or replace the dockerswarm and (optional) remove the postgress docker run command. You can use it to your liking. The postgreess container is a dummy container only to make it possibly to join a the network uppgift created by docker swarm. 
