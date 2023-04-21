FROM ubuntu:latest AS build
RUN apt-get update
RUN apt-get install -y temurin-17-jdk
COPY . .
RUN ./gradlew bootJar --no-daemon

FROM eclipse-temurin:17
EXPOSE 8080
RUN mkdir /opt/app
ARG JAR_FILE
COPY ${JAR_FILE} app.jar
CMD ["java", "-jar", "app.jar"]