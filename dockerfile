# Use the official Python image from the Docker Hub
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt .

# Install the required dependencies
RUN pip install -r requirements.txt

# Copy the rest of the application into the container
COPY . .

# Expose the application port
EXPOSE 8080

# Command to run the application
CMD ["python", "app.py"]