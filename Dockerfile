

FROM minio/mc

LABEL maintainer="MaXiaojun <somaxj@163.com>"
WORKDIR /data

COPY ./entry.sh /entry.sh

VOLUME [ "/data" ]

ENTRYPOINT ["/entry.sh"]

CMD ["sh"]