
FROM leafney/alpine-mongo-tools

LABEL maintainer="MaXiaojun <somaxj@163.com>"
WORKDIR /data

COPY --from=minio/mc /usr/bin/mc /usr/bin/mc
COPY --from=jobber /usr/bin/jobber /usr/bin/
COPY --from=jobber /usr/libexec/* /usr/bin/
COPY ./entry.sh /entry.sh

COPY jobber.yml .
RUN mkdir -p /var/jobber/0

VOLUME [ "/data" ]

ENTRYPOINT ["/entry.sh"]

CMD ["/usr/libexec/jobberrunner", "-u", "/var/jobber/1000/cmd.sock", "/data/.jobber"]