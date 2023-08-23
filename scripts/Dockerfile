FROM openjdk:11-jre-slim
#set working directory for easy management & better understading for others
WORKDIR /app
# Update & install required tools
RUN apt-get update -y && \
    apt-get install -y curl gcc && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*
#Expose on defined port
EXPOSE 8080
#copy build artifact into working Directory
COPY /target/demo-0.0.1-SNAPSHOT.jar demo-1.0.0.jar
#Entrypoint
ENTRYPOINT ["java", "-jar", "demo-1.0.0.jar"]


