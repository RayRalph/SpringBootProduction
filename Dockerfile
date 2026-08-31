FROM maven:3.9.9-eclipse-temurin-21 AS build

WORKDIR /build
COPY src /build/src
COPY pom.xml /build/pom.xml
RUN mvn clean package

FROM eclipse-temurin:21-jre-alpine
COPY --from=build /build/target/*.jar /opt/opt.jar
CMD ["java", "-jar", "/opt/opt.jar"]