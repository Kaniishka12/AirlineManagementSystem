FROM openjdk:21-jdk-slim

WORKDIR /app

# Copy all files, including lib folder
COPY . .

# Install ant and run build
RUN apt-get update && apt-get install -y ant && ant clean && ant -v

# Run the app
CMD ["java", "-cp", "dist/AirlineManagementSystem.jar:lib/*", "airlinemanagementsystem.Main"]
