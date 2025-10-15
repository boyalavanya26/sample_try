# Use an official Python runtime as a parent image
FROM python:3.10-slim

# Set the working directory in the container
WORKDIR /app

# Copy all project files into the container
COPY . /app

# Install required Python packages manually
RUN pip install --no-cache-dir flask openai

# Expose the port your app runs on
EXPOSE 5000

# Run the application (update if your entry point is different)
CMD ["python", "app.py"]