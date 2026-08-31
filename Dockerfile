FROM eclipse-temurin:21-jre-alpine
COPY --from=build /build/target/*.jar /opt/opt.jar
CMD ["java", "-jar", "/opt/opt.jar"]