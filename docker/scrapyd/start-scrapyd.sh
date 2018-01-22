#!/usr/bin/env bash


scrapyd &
echo "start scrapyd service"
sleep 2

BASE_DIR=/app/application
cd ${BASE_DIR}

for dir in `ls ${BASE_DIR}`;
do
    echo "deploying ${dir}"
    cd ${dir} && scrapyd-deploy
    cd ${BASE_DIR}
done

wait