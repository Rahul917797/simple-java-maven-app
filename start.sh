#!/bin/sh

# Start the Java app in the background
java -jar /app/my-app.jar &

# Start nginx in the foreground
nginx -g "daemon off;"

