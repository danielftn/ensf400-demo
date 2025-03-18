# Use a base image with Java pre-installed, e.g., OpenJDK
FROM openjdk:11-jdk-slim

WORKDIR /app

COPY . /app

RUN chmod +x gradlew

EXPOSE 8080 
# Install any dependencies (if necessary, e.g., for Gradle or Java)
RUN apt-get update 
CMD ["./gradlew", "apprun"]
