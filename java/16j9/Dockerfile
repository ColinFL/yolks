FROM        --platform=linux/amd64 ibm-semeru-runtimes:open-16-jdk

LABEL       author="Michael Parker" maintainer="parker@pterodactyl.io"
ENV			TZ=Europe/Moscow

RUN         apt update -y \
						&& apt install -y curl lsof ca-certificates openssl git tar sqlite3 fontconfig tzdata iproute2 libfreetype6 \
						&& useradd -d /home/container -m container

USER        container
ENV         USER=container HOME=/home/container

WORKDIR     /home/container

COPY        ./entrypoint.sh /entrypoint.sh

CMD         ["/bin/bash", "/entrypoint.sh"]
