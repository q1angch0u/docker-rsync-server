FROM alpine:3.15
MAINTAINER q1angch0u

RUN apk update \
    && apk add rsync

WORKDIR /data1
COPY rsyncd.conf /etc/

CMD ["rsync", "--daemon", "--no-detach"]
