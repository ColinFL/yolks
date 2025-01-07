
FROM        --platform=linux/amd64 golang:1.22-alpine

LABEL       author="ColinFL" maintainer="admin@dscrd.ru"
ENV			TZ=Europe/Moscow

LABEL       org.opencontainers.image.source="https://github.com/ColinFL/yolks"
LABEL       org.opencontainers.image.licenses=MIT

RUN         apk add --update --no-cache ca-certificates tzdata \
				&& adduser -D -h /home/container container

USER        container
ENV         USER=container HOME=/home/container
WORKDIR     /home/container
ENV 		GOPATH=/home/container/tmp/go
ENV 		GOMODCACHE=/home/container/tmp/go/pkg

COPY        ./../entrypoint.sh /entrypoint.sh
CMD         [ "/bin/ash", "/entrypoint.sh" ]
