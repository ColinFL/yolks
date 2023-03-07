FROM        --platform=$TARGETOS/$TARGETARCH python:3.7-slim

LABEL       author="ColinFL" maintainer="service@discord-bot.net"
ENV			TZ=Europe/Moscow

RUN         apt update \
            && apt -y install git gcc g++ ca-certificates dnsutils curl iproute2 ffmpeg procps tzdata software-properties-common locales locales-all wget cmake zlib1g-dev \
            && useradd -m -d /home/container container

RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8
ENV LC_ALL en_US.UTF-8

RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

USER        container
ENV         USER=container HOME=/home/container
WORKDIR     /home/container

COPY        ./../entrypoint.sh /entrypoint.sh
CMD         ["/bin/bash", "/entrypoint.sh"]
