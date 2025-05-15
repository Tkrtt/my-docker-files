#!/bin/bash

docker stop ubuntu-downloader && docker rm ubuntu-downloader

docker build -t ubuntu-downloader:latest .

docker run -v ./packages:/home --name ubuntu-downloader ubuntu-downloader:latest cp -r /packages /home