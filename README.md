# Introduction
This repo holds the Dockerfile image used for the MLFlow application currently available in the Edge Orchestration Marketplace. MLflow is an open-source platform designed to manage the end-to-end machine learning lifecycle.

## Features

- **Tracking**: Log and query experiments, including parameters, metrics, and artifacts.
- **Projects**: Package data science code in a reusable, reproducible format.
- **Models**: Manage and deploy models from various ML libraries.
- **Model Registry**: Centralized model store for managing model versions, stages, and annotations.

## Use Cases

- **Experiment Tracking**: Keep track of experiments, compare results, and reproduce runs.
- **Model Management**: Version control for models, facilitating collaboration and deployment.
- **Reproducibility**: Ensure that experiments and models can be reproduced by others.
- **Deployment**: Deploy models to various platforms, including Docker, Kubernetes, and cloud services.

# Prerequisites

1. You must have a MLFlow installed via the Edge Orchestration Marketplace

## Use Cases
Currently, there is no feature yet available for MLFlow to integrate fully with the DeltaV Edge Environment.

## MLFlow Setup
1.	Launch the MLFlow Web Interface: http://{edge_ip}:5000.
![MlFlow Web Ui](https://github.com/EmersonDeltaV/mlflow/blob/main/assets/sample-ui-image.png?raw=true)

## Complementary Applications
To create a complete ecosystem however, MLflow should ideally be integrated with other applications. The Edge Orchestration Marketplace currenly support only some of these, but to give an idea, here are some apps normally used in tandem.
1. **TensorFlow**:
   - **Description**: An end-to-end open-source platform for machine learning.
   - **Use Case**: Model training and deployment.
   - **Integration**: Use MLflow to track experiments and manage TensorFlow models.
   - **Documentation**: TensorFlow Integration

2. **Apache Spark**:
   - **Description**: A unified analytics engine for large-scale data processing.
   - **Use Case**: Data preprocessing and distributed training.
   - **Integration**: Use MLflow to track and manage Spark MLlib models.
   - **Documentation**: MLflow with Apache Spark

3. **Kubernetes**:
   - **Description**: An open-source system for automating deployment, scaling, and management of containerized applications.
   - **Use Case**: Model deployment and scaling.
   - **Integration**: Deploy MLflow tracking server and models on Kubernetes.
   - **Documentation**: MLflow on Kubernetes

4. **PostgreSQL**:
   - **Description**: A powerful, open-source object-relational database system.
   - **Use Case**: Store MLflow tracking data and artifacts.
   - **Integration**: Configure MLflow to use PostgreSQL as the backend store.
   - **Documentation**: MLflow Tracking with PostgreSQL

5. **Jupyter** \(currently available in the Marketplace\):
   - **Description**: An open-source web application for creating and sharing documents that contain live code, equations, visualizations, and narrative text.
   - **Use Case**: Interactive data analysis and model development.
   - **Integration**: Track Jupyter notebook runs and log results to MLflow.
   - **Documentation**: MLflow with Jupyter Notebooks

6. **MinIO**:
   - **Description**: A high-performance, S3-compatible object storage service.
   - **Use Case**: Store MLflow artifacts such as models, datasets, and configuration files.
   - **Integration**: Configure MLflow to use MinIO as the artifact store.
   - **Documentation**: [MLflow MinIO Integration](https://www.restack.io/docs/mlflow-knowledge-mlflow-minio-integration)
