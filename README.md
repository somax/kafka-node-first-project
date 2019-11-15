# MinIO Client Dockerfile


## build
```
docker build --rm -f "Dockerfile" -t somax/minio-mc-docker:0.1.0 .
```


## usage
```
docker run --rm -it \
    -e MINIO_SERVER_NAME=test \
    -e MINIO_SERVER_URL=http://localhost:9000 \
    -e MINIO_ACCESS_KEY=test \
    -e MINIO_SECRET_KEY=test1234 \
    somax/minio-mc-docker:0.1.0 
    mc version
```

## jobber config
docs: https://dshearer.github.io/jobber/doc/v1.4/

```
mc config host add my http://localhost:9000 accesskey secretkey

mongodump -h 172.17.0.6 --archive | mc pipe my/smx/db.archive
```
