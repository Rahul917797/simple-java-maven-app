FROM openjdk:17-jdk-slim

# Install nginx
RUN apt-get update && apt-get install -y nginx && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /app

# Copy Java app JAR
COPY target/my-app-1.0-SNAPSHOT.jar /app/my-app.jar

# Copy nginx config
COPY nginx.conf /etc/nginx/nginx.conf

# Copy start script and make it executable
COPY start.sh /start.sh
RUN chmod +x /start.sh

# Expose ports for nginx and Java app (if needed)
EXPOSE 80
EXPOSE 8080

# Run start script
CMD ["/start.sh"]

