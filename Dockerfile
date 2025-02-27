FROM openjdk:11-jre-alpine

# Set the working directory inside the container
WORKDIR /usr/app

COPY build/libs/my-app-*.jar my-app.jar

# Expose port 8080 (optional, only needed if running in a containerized environment)
EXPOSE 8080

# Use ENTRYPOINT to run the Java application
ENTRYPOINT ["java", "-jar", "my-app.jar"]
