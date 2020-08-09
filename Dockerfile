FROM alpine:latest
RUN apk update
RUN apk add --no-cache ca-certificates curl
RUN curl https://runtime.fivem.net/artifacts/fivem/build_proot_linux/master/2802-a203581ad20c36ab2f8688bbf2ec8660cbb8e1c9/fx.tar.xz| tar xJ -C /srv

WORKDIR /srv

EXPOSE 30120/tcp 30120/udp

ENTRYPOINT ["sh", "/srv/run.sh"]
CMD ["+exec", "/srv/server.cfg"]
