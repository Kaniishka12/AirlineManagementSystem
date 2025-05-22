# Use Debian-based OpenJDK image with apt-get available
FROM openjdk:21-jdk-slim

# Set working directory inside the container
WORKDIR /app

# Copy all your project files (including lib folder with jars) to the container
COPY . .

# Update apt-get, install ant, then build the project using ant
RUN apt-get update && apt-get install -y ant && ant clean && ant

# Run your Java application
CMD ["java", "-cp", "dist/AirlineManagementSystem.jar:lib/*", "airlinemanagementsystem.Main"]
