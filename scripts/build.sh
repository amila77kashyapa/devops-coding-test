#!/bin/sh
# Change to the project directory (one level up from the script directory)
cd ..
##install maven wrapper assuming maven already installed in local machine
mvn wrapper:wrapper
##Build clean state new build "cleaning old artifacts & build"
./mvnw clean install
##Building Docker image
echo "Building Docker Image"

docker build -f scripts/Dockerfile --tag=coding-test:latest .
