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

# ===============================
# 1️⃣ Build stage
# ===============================
FROM maven:3.9.6-eclipse-temurin-17 AS build
WORKDIR /app

COPY pom.xml .
COPY src src
RUN mvn -B clean package -DskipTests

# ===============================
# 2️⃣ Runtime stage
# ===============================
FROM eclipse-temurin:17-jre
WORKDIR /app

COPY --from=build /app/target/Docker-Spring-Boot-0.0.1-SNAPSHOT.jar app.jar

EXPOSE 9090
ENTRYPOINT ["java","-jar","app.jar"]

