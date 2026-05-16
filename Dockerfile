FROM maven:3.9-eclipse-temurin-17-alpine AS build
COPY . /app
WORKDIR /app
RUN mvn clean package -DskipTests

FROM eclipse-temurin:17-alpine
COPY --from=build /app/target/*.jar  /app/backend.jar
ENTRYPOINT ["java","-jar","/app/backend.jar"]
