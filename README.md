# dockarr_stack

This repo includes a docker-compose file running most of the "*arr" applications.
It is build around Jellyseerr but you can easily adapt it for Plex.

## How to use it

1. Clone the repository
2. Update the ".env" file with your variables and paths
3. Make sure the required folders exist (otherwise they will be created as sudo, which can lead to access right issues)
4. Run the stack from the "arr_stack" folder with the following command `sudo docker compose up -d`
5. Be aware that the first setup of the apps will take a certain time, but it is absolutely worth it.
   Check this website for documentation: https://wiki.servarr.com/


## What's inside
The downloaders are:
- sabnzb for usenet
- transmission for torrents

The clients are:
- jellyseerr to manage requests
- radarr for movies
- sonarr for TV shows
- lidarr for music
- bazarr for movie subtitles
- jackett and nzbhydra2 to enable search on torrent sites

The downloaders are hidden behind a VPN using Gluetun. Please check Gluetun wiki to set it up (https://github.com/qdm12/gluetun/wiki).
If you don't want to use a VPN, just enable the ports on sabnzb and transmission and delete the Gluetun service.

Prowlarr and organizr compose are ready if you want to use them.

x

