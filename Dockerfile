# Use official Python runtime as a base image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /usr/src/app

# Copy the requirements file and install dependencies
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code
COPY . .

# Expose the Flask app port
EXPOSE 5000

# Command to run the application
CMD ["python", "app.py"]
