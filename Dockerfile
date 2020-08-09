FROM alpine:latest
RUN apk update
RUN apk add --no-cache ca-certificates curl
RUN curl https://runtime.fivem.net/artifacts/fivem/build_proot_linux/master/2431-350dd7bd5c0176216c38625ad5b1108ead44674d/fx.tar.xz| tar xJ -C /srv

WORKDIR /srv

EXPOSE 30120/tcp 30120/udp

ENTRYPOINT ["sh", "/srv/run.sh"]
CMD ["+exec", "/srv/server.cfg"]
