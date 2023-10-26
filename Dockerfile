FROM maven:3.8.5-openjdk-17-slim AS builder

ADD ./pom.xml pom.xml
ADD ./src src/

RUN mvn clean package

From openjdk:17-jdk-slim

COPY --from=builder target/my-app-0.0.1-SNAPSHOT.jar my-app.jar

EXPOSE 8080

CMD ["java", "-jar", "my-app.jar"]