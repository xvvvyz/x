```
# .env

PGID=1000
PLEX_CLAIM=...
PUID=1000
QBITTORRENT_PASS=adminadmin
QBITTORRENT_URL=...
QBITTORRENT_USER=admin
SUBNET=...
TZ=America/Los_Angeles
```

```
# config/torent/qBittorrent/config/qBittorrent.conf

WebUI\Password_PBKDF2="@ByteArray(ARQ77eY1NUZaQsuDHbIMCA==:0WMRkYTUWVT9wVvdDtHAjU9b3b7uB8NR1Gur2hmQCvCDpm39Q+PsJRJPaCU51dEiz+dTzh8qbPsL8WkFljQYFQ==)"
```

```
# config/torrent/wireguard/wg0.conf

...
```

```
docker network create tv
docker compose up -d
```
