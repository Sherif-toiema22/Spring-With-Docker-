# 1️⃣ Build stage
#FROM eclipse-temurin:17-jdk AS build
#WORKDIR /app
#COPY . .
#RUN ./mvnw clean package -DskipTests
#
## 2️⃣ Runtime stage
#FROM eclipse-temurin:17-jre
#WORKDIR /app
#COPY --from=build /app/target/Docker-Spring-Boot-0.0.1-SNAPSHOT.jar app.jar
#ENTRYPOINT ["java","-jar","/app/target /Docker-Spring-Boot-0.0.1-SNAPSHOT.jar"]

#
#FROM ubuntu:latest
#LABEL authors="Sherif Toi'ema"
#ENTRYPOINT ["top", "-b"]
#FROM maven:3.6.0-jdk-11-slim
#COPY src /Project/DockerSpring
#COPY pom.xml /Project
#RUN mvn -f /Project/pom.xml clean package
#RUN mvn -f /Project/pom.xml install package
##################################################################
#FROM eclipse-temurin:17-jre As Build
#EXPOSE 9090
#COPY --from=build /docker-spring-boot/target/Docker-Spring-Boot-0.0.1-SNAPSHOT.jar app.jar
#ENTRYPOINT ["java","-jar","/docker-spring-boot/target /Docker-Spring-Boot-0.0.1-SNAPSHOT.jar"]