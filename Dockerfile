FROM openjdk:11-jre-slim

# Set the working directory inside the container
WORKDIR /usr/app

# Copy the JAR file from the build context to the container
COPY build/libs/my-app-1.0-SNAPSHOT.jar my-app.jar  # ✅ Use a simple filename

# Expose port 8080 (optional, only needed if running in a containerized environment)
EXPOSE 8080

# Use ENTRYPOINT to run the Java application
ENTRYPOINT ["java", "-jar", "my-app.jar"]
