# docker_medias

This repo is build around Jellyseerr & Jellyfin but you can easily adapt it for Plex. It includes several docker-compose files:
- "*arr" applications
- downloaders behind a gluetun VPN
- handbrake for transcoding
- metube for downloading youtube videos
- dockge for docker management tools
- dashdot for monitoring

## How to use it

1. Clone the repository
2. Update the ".env" file with your variables and paths
3. Create the required networks
```
docker network create arr_stack
docker network create dockernet
```
4. Make sure the required folders exist (otherwise they will be created as sudo, which can lead to access right issues)
5. Run the stacks from the different folders with the  `sudo docker compose up -d` command
6. Be aware that the first setup of the apps will take a certain time, but it is absolutely worth it.
   Check this website for documentation: https://wiki.servarr.com/


## What's inside
The downloaders are:
- sabnzb for usenet
- qbittorent for torrents

The clients are:
- jellyseerr to manage requests
- radarr for movies
- sonarr for TV shows
- lidarr for music
- bazarr for movie subtitles
- prowlaar to enable search on torrent sites

The downloaders are hidden behind a VPN using Gluetun. Please check Gluetun wiki to set it up (https://github.com/qdm12/gluetun/wiki).
If you don't want to use a VPN, just enable the ports on sabnzb and qbittorent and delete the Gluetun service.

Prowlarr and organizr compose are ready if you want to use them.

