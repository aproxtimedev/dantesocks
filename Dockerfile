FROM alpine:3.17.2

# install dante-server
RUN apk update
RUN apk add dante-server=1.4.3-r2

# add entrypoint
COPY ./docker-entrypoint.sh /docker-entrypoint.d/dante-server.sh
RUN chmod 700 /docker-entrypoint.d/dante-server.sh
ENTRYPOINT [ "/docker-entrypoint.d/dante-server.sh" ]

EXPOSE 1080

CMD ["/usr/sbin/sockd"]