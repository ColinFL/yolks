FROM        --platform=linux/amd64 python:3.9-slim

LABEL       author="Michael Parker" maintainer="parker@pterodactyl.io"
ENV			TZ=Europe/Moscow

RUN         apt update \
            && apt -y install git gcc g++ ca-certificates dnsutils curl iproute2 ffmpeg procps \
            && useradd -m -d /home/container container

USER        container
ENV         USER=container HOME=/home/container
WORKDIR     /home/container

COPY        ./../entrypoint.sh /entrypoint.sh
CMD         ["/bin/bash", "/entrypoint.sh"]
