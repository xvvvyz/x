```
mkdir -p media config/jelly/{config,cache} config/torrent/wireguard
docker network create x
```

```
# .env

JELLYFIN_URL=example.com
PGID=1000
PUID=1000
QBITTORRENT_PASS=adminadmin
QBITTORRENT_URL=example.com
QBITTORRENT_USER=admin
SUBNET=...
TZ=America/Los_Angeles
```

```
# config/torrent/wireguard/wg0.conf

...
```

```
docker compose up -d
```

```
set up nginx proxy manager over socks proxy
go to qbt web ui -> settings -> advanced, set network interface to wg0
update qbt web ui username and password, update env file
```

```
docker compose down
docker compose up -d
```
