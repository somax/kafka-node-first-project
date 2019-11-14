# MinIO Client Dockerfile


## build
```
docker build --rm -f "Dockerfile" -t reg.scp.com/ops/minio-mc-docker:0.1.0 .
```


## usage
```
docker run --rm -it \
    -e MINIO_SERVER_NAME=test \
    -e MINIO_SERVER_URL=http://localhost:9000 \
    -e MINIO_ACCESS_KEY=test \
    -e MINIO_SECRET_KEY=test1234 \
    reg.scp.com/ops/minio-mc-docker:0.1.0 
    mc version
```

MINIO_SERVER_NAME=test
MINIO_SERVER_URL=http://localhost:9000
MINIO_ACCESS_KEY=test
MINIO_SECRET_KEY=test1234