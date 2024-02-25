# Use the official Python image as the base image
FROM python:3.9-slim

# Set the working directory inside the container
WORKDIR /app

# Copy the requirements file into the container at /app
COPY requirements.txt .

# Install Flask and other dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy the current directory contents into the container at /app
COPY . .

# Expose port 8080 to allow external access
EXPOSE 8080

# Define environment variable
ENV FLASK_APP=app.py

# Run the Flask application when the container launches
CMD ["flask", "run", "--host=0.0.0.0", "--port=8080"]
