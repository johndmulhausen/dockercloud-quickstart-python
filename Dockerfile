# Using official python runtime base image
FROM python:2.7-slim

# Set the application directory
WORKDIR /app

# Install our requirements.txt
ADD . /app
RUN pip install -r requirements.txt

# Make port 80 available
EXPOSE 80 

# Environment Variables
ENV NAME World

# Define our command to be run when launching the container
CMD ["python", "app.py"]
