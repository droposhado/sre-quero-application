#!/bin/bash

sudo docker build -t droposhado/application . --no-cache

sudo docker run droposhado/application -v ./log:/var/log/app -p 8080:8080
