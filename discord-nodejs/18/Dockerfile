FROM        --platform=$TARGETOS/$TARGETARCH node:18-bullseye-slim

LABEL       author="ColinFL" maintainer="service@discord-bot.net"
ENV			TZ=Europe/Moscow

RUN         apt update \
            && apt -y install ffmpeg iproute2 git sqlite3 libsqlite3-dev python3 python3-dev ca-certificates dnsutils tzdata zip tar curl build-essential libtool libcairo2-dev libpango1.0-dev libjpeg-dev libgif-dev librsvg2-dev \
            && useradd -m -d /home/container container

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

RUN         npm install npm@latest -g
RUN			npm install pm2 -g

USER        container
ENV         USER=container HOME=/home/container
WORKDIR     /home/container

COPY        ./../entrypoint.sh /entrypoint.sh
CMD         [ "/bin/bash", "/entrypoint.sh" ]
