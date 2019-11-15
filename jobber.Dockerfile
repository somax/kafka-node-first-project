
FROM jobber
LABEL maintainer="MaXiaojun <somaxj@163.com>"
WORKDIR /data

COPY --from=minio/mc /usr/bin/mc /usr/bin/mc
COPY ./entry.sh /entry.sh

COPY jobber.yml .

VOLUME [ "/data" ]

ENTRYPOINT ["/entry.sh"]

CMD ["/usr/libexec/jobberrunner", "-u", "/var/jobber/1000/cmd.sock", "/data/.jobber"]