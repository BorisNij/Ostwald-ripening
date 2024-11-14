FROM openjdk:17-oracle
LABEL authors="borisnijikovsky"
ARG JAR_FILE=target/school-schedule-manager-0.0.1-SNAPSHOT.jar
WORKDIR /opt/app
RUN mkdir -p logs
COPY ${JAR_FILE} app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]