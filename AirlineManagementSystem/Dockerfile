# Use base image with OpenJDK
FROM openjdk:21-jdk-slim

# Set working directory
WORKDIR /app

# Copy project files into container
COPY lib lib

# Install ant
RUN apt-get update && \
    apt-get install -y ant && \
    ant clean && \
    ant

# Set the command to run your application
CMD ["java", "-cp", "dist/AirlineManagementSystem.jar", "airlinemanagementsystem.Login"]

