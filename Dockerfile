FROM adoptopenjdk/openjdk11:jdk-11.0.8_10-debian-slim
VOLUME /tmp
EXPOSE 8080
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} app.jar
ENTRYPOINT ["java","-jar","/app.jar"]