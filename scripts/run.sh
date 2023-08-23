#!/bin/sh
#map exposed port & start with container name
docker run -p 8080:8080 -d --name coding-test coding-test:latest