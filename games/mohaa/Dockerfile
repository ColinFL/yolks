FROM        ghcr.io/parkervcp/yolks:debian

LABEL       author="Manuel Dielacher" maintainer="th3dilli@gmx.at"
ENV			TZ=Europe/Moscow

LABEL       org.opencontainers.image.source="https://github.com/pterodactyl/yolks"
LABEL       org.opencontainers.image.licenses=MIT

RUN			dpkg --add-architecture i386 \
			&& apt update && apt upgrade -y \
			&& apt install -y lib32gcc-s1 lib32stdc++6 libstdc++5:i386


