FROM        --platform=linux/amd64 ghcr.io/parkervcp/yolks:debian

LABEL       author="Torsten Widmann" maintainer="info@goover.de"
ENV			TZ=Europe/Moscow

ENV         DEBIAN_FRONTEND noninteractive

RUN         apt update -y \
            && apt upgrade -y \
            && apt install -y apt-transport-https wget iproute2 libgdiplus \
            && wget https://dot.net/v1/dotnet-install.sh \   
            && chmod +x dotnet-install.sh \
			&& ./dotnet-install.sh -i /usr/share -v 5.0.408 \
            && ln -s /usr/share/dotnet /usr/bin/dotnet

USER        container
ENV         USER=container HOME=/home/container
WORKDIR     /home/container

COPY        ./../entrypoint.sh /entrypoint.sh
CMD         [ "/bin/bash", "/entrypoint.sh" ]
