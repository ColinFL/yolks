# ----------------------------------
# Environment: MongoDB
# ----------------------------------
FROM        --platform=linux/amd64 mongo:5-focal

LABEL       author="Michael Parker" maintainer="parker@pterodactyl.io"
ENV			TZ=Europe/Moscow

ENV         DEBIAN_FRONTEND noninteractive

RUN         apt update -y \
            && apt install -y netcat iproute2 \
            && useradd -d /home/container -m container -s /bin/bash

USER        container
ENV         USER=container HOME=/home/container
WORKDIR     /home/container

COPY        ./entrypoint.sh /entrypoint.sh
CMD ["/bin/bash", "/entrypoint.sh"]
