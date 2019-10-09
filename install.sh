#!/bin/bash

sudo yum install -y epel-release \
    && sudo yum install -y python-pip \
    && sudo pip install docker-compose
sudo yum upgrade python*

DOMAIN=d1.phaseiilabs.com
EMAIL=twl@phase-ii.com

sudo docker run -it --rm --name certbot -p 80:80 \
    -v "/etc/letsencrypt:/etc/letsencrypt" \
    -v "/var/lib/letsencrypt:/var/lib/letsencrypt" \
    certbot/certbot certonly \
    --standalone -d ${DOMAIN} --preferred-challenges http \
    --agree-tos -n -m ${EMAIL}