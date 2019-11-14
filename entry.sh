#!/bin/sh
set -e

if [ $MINIO_SERVER_NAME ] && [ $MINIO_SERVER_URL ] && [  $MINIO_ACCESS_KEY ] && [ $MINIO_SECRET_KEY ]; then
    mc config host add $MINIO_SERVER_NAME $MINIO_SERVER_URL $MINIO_ACCESS_KEY $MINIO_SECRET_KEY
else
    echo "[INFO] Set all these environment (MINIO_SERVER_NAME, MINIO_SERVER_URL, MINIO_ACCESS_KEY, MINIO_SECRET_KEY) to init config."
fi

$@