#!/bin/bash
#
# The Kris Nóva Official Docker Install Script
#


mkdir -p ~/.cache/nova
cd ~/.cache/nova
wget https://download.docker.com/linux/static/stable/x86_64/docker-20.10.3.tgz
tar -xzf docker*
chmod +x docker/*
mv docker/* /usr/local/bin
