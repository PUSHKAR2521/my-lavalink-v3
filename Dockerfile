# Use an official OpenJDK runtime as a parent image
FROM openjdk:11-jre-slim

# Set the working directory in the container
WORKDIR /app

# Copy the Lavalink JAR file into the container
COPY Lavalink.jar /app

# Expose the port that Lavalink will run on
EXPOSE 5000

# Run Lavalink
CMD ["java", "-jar", "Lavalink.jar"]
