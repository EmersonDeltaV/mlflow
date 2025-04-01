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
2. You must have PostgreSQL and PGAdmin installed from the marketplace. Create a database for mlflow backkend uri storage.
3. You must have Minio installed from the marketplace. Create a bucket and a new pair of access and access secret keys.

## Use Cases
Currently, an MLFlow stack with PostgreSQL and Minio is available to integrate fully with the DeltaV Edge Environment.

## Complementary Application Setup
To create a complete ecosystem, MLflow should ideally be integrated with other applications. The Edge Orchestration Marketplace currenly support the following applications to deploy a complete ML workflow stack.
1. **PostgreSQL**:
   - **Description**: A powerful, open-source object-relational database system.
   - **Use Case**: Store MLflow tracking data and artifacts.
   - **Integration**: Configure MLflow to use PostgreSQL as the backend store. Create a database for MLFlow use.
   - **Documentation**: [MLflow Tracking with PostgreSQL](https://www.restack.io/docs/mlflow-knowledge-mlflow-postgres-integration)
   - **Emerson Github Link**:[EmersonDeltaV/postgresql](https://github.com/EmersonDeltaV/postgresql) and [EmersonDeltaV/pgadmin](https://github.com/EmersonDeltaV/pgadmin)

2. **Jupyter**:
   - **Description**: An open-source web application for creating and sharing documents that contain live code, equations, visualizations, and narrative text.
   - **Use Case**: Interactive data analysis and model development.
   - **Integration**: Track Jupyter notebook runs and log results to MLflow.
   - **Documentation**: [MLflow with Jupyter Notebooks](https://www.restack.io/docs/mlflow-knowledge-mlflow-jupyterhub-guide)
   - **Emerson Github Link**:[EmersonDeltaV/jupyter-labs-for-edge](https://github.com/EmersonDeltaV/jupyter-labs-for-edge)

3. **MinIO**:
   - **Description**: A high-performance, S3-compatible object storage service.
   - **Use Case**: Store MLflow artifacts such as models, datasets, and configuration files.
   - **Integration**: Configure MLflow to use MinIO as the artifact store. Create a bucket for artifact storage and generate access keys for MLFLow use.
   - **Documentation**: [MLflow MinIO Integration](https://www.restack.io/docs/mlflow-knowledge-mlflow-minio-integration)
   - **Emerson Github Link**:[EmersonDeltaV/minio]()

## MLFlow Setup
1. During App Deployment, fill in the necessary details to setup the backend uri storage and artifact storage.
2.	Launch the MLFlow Web Interface: http://{edge_ip}:5000.
![MlFlow Web Ui](https://github.com/EmersonDeltaV/mlflow/blob/main/assets/sample-ui-image.png?raw=true)
3. JupyterLabs model training can be tracked and logged with MLFlow.

### Renewing the MinIO access keys
For now, there is no way to renew the access keys to minio through the MLFlow Web UI. To access the artifact storage again from Jupyter, delete the app instance from Zededa. Retain the previously used volume instance and reploy the application again with the new access keys.

  
## Changelist
- **03/26/2025** - Added provisions and modified setup for Backend URI and Artifact URI storage.
- **03/26/2025** - Reorganized setup of applications for full stack.
- **04/01/2025** - Added recovery for expired MinIO Access Keys.
