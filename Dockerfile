FROM openjdk:17-jdk-slim

# Set the working directory in the container
WORKDIR /app

# Copy the built JAR file
COPY target/my-app-1.0-SNAPSHOT.jar /app/my-app.jar

# Expose port (optional if your app uses it)
EXPOSE 8080

# Run the Java app and keep container alive if it exits
CMD java -jar my-app.jar || tail -f /dev/null

