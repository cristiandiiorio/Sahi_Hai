#Use the official python image
FROM python:3.8

# Copy the requirements file to the working directory
COPY requirements.txt .

# Install the Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

#-------------------------------------------------------#

# Use the official php image
FROM php:latest

# Set new working directory
WORKDIR /var/www/html

# Copy the PHP code file in /app into the container at /var/www/html
COPY . .