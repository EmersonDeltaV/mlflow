# Use the official Python image from the Docker Hub
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements file into the container
COPY requirements.txt .

# Install the required packages
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code into the container
COPY . .

# Create a volume for persistent storage
VOLUME /mlflow

# Expose the port that MLFlow will run on
EXPOSE 5000

# Define environment variables for the backend store URI and MinIO
ENV BACKEND_STORE_URI=sqlite:///mlflow.db
ENV ARTIFACT_ROOT=s3://my-minio-bucket

# Set the entry point to run MLFlow
ENTRYPOINT ["sh", "-c", "mlflow server --host 0.0.0.0 --port 5000 --backend-store-uri $BACKEND_STORE_URI --serve-artifacts --default-artifact-root $ARTIFACT_ROOT"]