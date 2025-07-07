# Stage 1: Java app stage
FROM openjdk:17-jdk-slim AS java-app

WORKDIR /app
COPY target/my-app-1.0-SNAPSHOT.jar /app/my-app.jar

# Expose Java app port
EXPOSE 8080

# Stage 2: Nginx + Java app runner
FROM nginx:stable-alpine

# Copy the Java app jar from the previous stage
COPY --from=java-app /app/my-app.jar /app/my-app.jar

# Copy custom nginx config
COPY nginx.conf /etc/nginx/nginx.conf

# Copy start script to launch both processes
COPY start.sh /start.sh
RUN chmod +x /start.sh

# Expose nginx port 80
EXPOSE 80

# Run the start script
CMD ["/start.sh"]

