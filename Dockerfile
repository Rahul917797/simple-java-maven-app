FROM openjdk:17-jdk-slim

# Set the working directory in the container
WORKDIR /app

# Copy the built JAR file from the builder stage
COPY target/my-app-1.0-SNAPSHOT.jar /app/my-app.jar

# Expose port 8080 (optional)
EXPOSE 8080

# Command to run the JAR file
CMD ["java", "-jar", "my-app.jar"]
