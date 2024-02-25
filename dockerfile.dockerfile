# This is to use the official Python image
FROM python:3.9-slim

# This is to set the working directory
WORKDIR /app

# This is to copy the current directory contents into the container at /app
COPY . /app

# This is to install Flask
RUN pip install --no-cache-dir flask

# This is to expose port 5000
EXPOSE 5000

# This is to define environment variable
ENV FLASK_APP=app.py

# This is to run app.py when the container launches
CMD ["flask", "run", "--host=0.0.0.0"]
