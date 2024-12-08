
```
# 1. install docker & fuse

mkdir -p data/{downloads,r2} config/rclone config/torrent/wireguard
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
# config/rclone/rclone.conf

[r2]
type = s3
provider = Cloudflare
access_key_id = ...
secret_access_key = ...
region = auto
endpoint = ...
```

```
# config/torrent/wireguard/wg0.conf

...
```

```
# /etc/fuse.conf

user_allow_other
```

```
docker compose up -d

# 1. set up nginx proxy manager over socks proxy
# 2. go to qbt web ui -> settings
#    advanced -> set network interface -> wg0
#    downloads -> default download path -> /data/downloads
#    web ui -> username and password
# 3. update .env file with relevant values

docker compose down
docker compose up -d
```
