# Use AdoptOpenJDK as the base image
FROM adoptopenjdk:11-jre-hotspot
# Set the working directory in the container
WORKDIR /app

# Copy the JAR file into the container
COPY target/myapp-1.0-SNAPSHOT.jar .

# Expose the port your application runs on (if applicable)
EXPOSE 8080

# Define the command to run your application
CMD ["java", "-jar", "myapp-1.0-SNAPSHOT.jar"]
