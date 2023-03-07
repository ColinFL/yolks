FROM        --platform=linux/amd64 rust:1.60-slim

LABEL       author="Ethan Coward" maintainer="ethan.coward@icloud.com"
ENV			TZ=Europe/Moscow

RUN         apt update \
                && apt -y install git dnsutils curl iproute2 ffmpeg \
                && useradd -m -d /home/container container

USER        container
ENV         USER=container HOME=/home/container CARGO_HOME=/home/container/.cargo
WORKDIR     /home/container

COPY        ./../entrypoint.sh /entrypoint.sh
CMD         ["/bin/bash", "/entrypoint.sh"]
