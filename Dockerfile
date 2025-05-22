FROM openjdk:21
WORKDIR /app

# Copy source files
COPY . .

# Compile the project using ant
RUN apt-get update && apt-get install -y ant && ant

# Run the application
CMD ["java", "-cp", "dist/AirlineManagementSystem.jar", "airlinemanagementsystem.Main"]
