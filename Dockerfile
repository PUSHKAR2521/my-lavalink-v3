# Use an official OpenJDK runtime as a parent image
FROM openjdk:17-jdk-slim

# Set the working directory
WORKDIR /usr/src/lavalink

# Copy the Lavalink jar and configuration files into the container
COPY Lavalink.jar Lavalink.jar
COPY application.yml application.yml

# Expose the Lavalink default port
EXPOSE 5000

# Command to run Lavalink
CMD ["java", "-jar", "Lavalink.jar"]
