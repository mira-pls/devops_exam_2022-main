FROM maven:3.8.3-adoptopenjdk-11 as builder
WORKDIR /app
COPY pom.xml .
COPY src ./src
RUN mvn package

FROM adoptopenjdk/openjdk11
COPY target/onlinestore-0.0.1-SNAPSHOTTT.jar /app/application.jar
ENTRYPOINT ["java","-jar","/app/application.jar"]