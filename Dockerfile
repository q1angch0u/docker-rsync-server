FROM alpine:3.15
MAINTAINER q1angch0u

RUN apk update \
    && apk add rsync

WORKDIR /data1

RUN echo "simulation:123456" > /etc/rsync.password \
    && chmod 600 /etc/rsync.password

COPY rsyncd.conf /etc/

CMD ["rsync", "--daemon", "--no-detach"]
