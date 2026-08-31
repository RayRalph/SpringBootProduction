FROM eclipse-temurin:21-jre-alpine
MAINTAINER Raymond Ralph
RUN addgroup -S mygroup && adduser -S myuser -G mygroup
USER myuser:mygroup
ARG JAR_FILE=build/libs/SpringBootProdApplication-0.0.1-SNAPSHOT.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","app.jar"]
EXPOSE 5000
