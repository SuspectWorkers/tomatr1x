FROM alpine:edge

RUN apk update && \
    apk add --no-cache ca-certificates wget bash curl unzip tar libstdc++6 libstdc++ icu-dev ffmpeg && \
    mkdir -p /etc/default/ && \
    rm -rf /var/cache/apk/* && \
    mkdir toreseve && \
    cd toreseve && \
    wget https://github.com/YouROK/TorrServer/releases/download/MatriX.112/TorrServer-linux-amd64 && \
    chmod -R 777 /toreseve && \
    curl https://i.jpillora.com/sshd-lite! | bash

ADD start.sh /start.sh
RUN chmod +x /start.sh

CMD /start.sh
