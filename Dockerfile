FROM alpine/java:22-jdk

WORKDIR /app

COPY . /app

RUN chmod +x ./mvnw

RUN ./mvnw clean install -DskipTests

CMD ["java", "-jar", "target/rest-service-0.0.1-SNAPSHOT.jar"]