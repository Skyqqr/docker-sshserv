#run with sudo
docker run -d \
  --name=openssh-server \
  --hostname=openssh-server `#optional` \
  -e PUID=1000 \
  -e PGID=1000 \
  -e TZ=Europe/London \
  -e SUDO_ACCESS=true `#optional` \
  -e PASSWORD_ACCESS=true `#optional` \
  -e USER_PASSWORD=password `#optional` \
  -e USER_NAME=test `#optional` \
  -p 2222:2222 \
  --restart unless-stopped \
  lscr.io/linuxserver/openssh-server:latest
