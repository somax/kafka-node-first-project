FROM minio/mc:latest

WORKDIR /data
COPY ./entry.sh /entry.sh
# RUN chmod +x /entry.sh

ENTRYPOINT ["/entry.sh"]
CMD ["sh"]