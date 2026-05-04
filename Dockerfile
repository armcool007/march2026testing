FROM maven:3.9-eclipse-temurin-17 AS check
COPY . /app
WORKDIR /app
RUN mvn clean package -DskipTests
EXPOSE 8080

FROM tomcat:latest
COPY --from=check /app/target/*.war /usr/local/tomcat/webapps
