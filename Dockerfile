FROM maven:3.9-eclipse-temurin-17 AS build
COPY ./contact_backend_app_testing /app
WORKDIR /app
RUN mvn clean package -DskipsTest

FROM eclipse-temurin:17-jre-alpine
COPY --from=build /app/target/*.jar /app/backend.jar
WORKDIR /app
ENTRYPOINT ["java","-jar","backend.jar"]
