#!/usr/bin/env bash

rm /twistd.pid

scrapyd &
echo "start scrapyd service"
sleep 2

deploy-projects

wait