FROM ubuntu:latest
LABEL authors="Sherif Toi'ema"

ENTRYPOINT ["top", "-b"]

FROM maven:3.6.0-jdk-11-slim

COPY src /Project/DockerSpring

COPY pom.xml /Project

RUN mvn -f /Project/pom.xml clean package

RUN mvn -f /Project/pom.xml install package

From openjdk:11-jre-slim As Build
Expose 9090
ENTRYPOINT ["java","-jar","/Project/target/Docker-Spring-Boot-0.0.1-SNAPSHOT.jar"]