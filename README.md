# TCS_ION_RIO_125-dockerContainer_dockercompose_Javastack
TCS IO RIO 125 Develop docker container using docker compose for application development using Java stack

## Project Overview

This project demonstrates how to deploy a Java web application (`TestRIOJavaStack.war`) in a Docker container using **Tomcat**. The application is configured with **Docker Compose** for managing multi-container setups, and the Docker setup includes a custom `Dockerfile` for configuring the environment.

### Objectives:
- Containerizing a Java web app.
- Deploying the app using **Docker** and **Docker Compose**.
- Setting up a **Tomcat** server to serve the `WAR` file.
- Providing a simple setup for local development and testing of the application.

## Project Structure
my-tomcat-app/
├── Dockerfile                    # Custom Dockerfile for app
├── docker-compose.yml            # Docker Compose file
├── TestRIOJavaStack.war          # Your WAR file
├── one/                          # Folder for "one" service Dockerfile
│   └── Dockerfile                # Dockerfile for "one" service
├── two/                          # Folder for "two" service Dockerfile
│   └── Dockerfile                # Dockerfile for "two" service
└── README.md                     # Project documentation and instructions

## 🚀 Steps to Run

### 1. Install Docker and Docker Compose

```bash
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common \
    gnupg-agent

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

sudo apt-get update
sudo apt-get install -y docker-ce docker-ce-cli containerd.io

sudo curl -L "https://github.com/docker/compose/releases/download/1.25.5/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

sudo chmod +x /usr/local/bin/docker-compose

### Prerequisites:
- Docker: Ensure you have Docker installed on your machine. You can find installation instructions [here](https://docs.docker.com/get-docker/).
- Docker Compose: You’ll also need Docker Compose. You can install it [here](https://docs.docker.com/compose/install/).

### Step 1: Clone the repository

First, clone this repository to your local machine:

```bash
git clone https://github.com/your-username/your-repository-name.git
cd your-repository-name

### Step 2: Build and Run the Application
Inside the project folder, run the following command to start the application using Docker Compose:
docker-compose up --build

### Step 3: Stopping the Application
To stop the application and remove the containers, run:
docker-compose down
