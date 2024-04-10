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
# config/torent/qBittorrent/config/qBittorrent.conf

WebUI\Password_PBKDF2="@ByteArray(ARQ77eY1NUZaQsuDHbIMCA==:0WMRkYTUWVT9wVvdDtHAjU9b3b7uB8NR1Gur2hmQCvCDpm39Q+PsJRJPaCU51dEiz+dTzh8qbPsL8WkFljQYFQ==)"
```

```
# config/torrent/wireguard/wg0.conf

...
```

```
mkdir -p media config/jelly/{config,cache}
docker network create x
docker compose up -d
```
