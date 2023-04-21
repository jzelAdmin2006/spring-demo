FROM ubuntu:latest AS build
RUN apt-get update
RUN apt-get install openjdk-17-jdk -y
COPY . .
RUN ./gradlew bootJar --no-daemon

FROM openjdk:17-jdk-alpine
EXPOSE 8080
ARG JAR_FILE
COPY ${JAR_FILE} app.jar

ENTRYPOINT [ "java", "-jar", "/dummy.jar" ]