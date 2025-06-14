# Simple Flask Docker App with CI/CD on AWS 🚀

This repository contains a basic Python Flask web application that is:

- ✅ Containerized using Docker
- ✅ Built and pushed via AWS CodeBuild
- ✅ Deployed to EC2 using AWS CodeDeploy
- ✅ Fully automated with AWS CodePipeline

## 🛠️ Tech Stack

- Python 3.12
- Flask 3.x
- Docker
- AWS CodePipeline
- AWS CodeBuild
- AWS CodeDeploy
- EC2 (Amazon Linux or Ubuntu)

## 🔁 CI/CD Workflow

1. **Source**: Code is pushed to GitHub.
2. **Build**: CodeBuild installs dependencies, builds the Docker image, and pushes it to Docker Hub.
3. **Deploy**: CodeDeploy pulls the image and deploys the container on an EC2 instance using `start-container.sh` and `stop-container.sh` scripts.
