# 🚀 Simple Flask Docker App with CI/CD on AWS

This repository contains a basic **Python Flask** web application that is:

✅ Containerized using **Docker**  
✅ Built and pushed via **AWS CodeBuild**  
✅ Deployed to EC2 using **AWS CodeDeploy**  
✅ Fully automated with **AWS CodePipeline**

---

## 🛠️ Tech Stack

- Python 3.12  
- Flask 3.x  
- Docker  
- AWS CodePipeline  
- AWS CodeBuild  
- AWS CodeDeploy  
- Amazon EC2 (Amazon Linux 2 / Ubuntu)

---

## 🔁 CI/CD Workflow

1. **Source**  
   Code is pushed to the GitHub repository (`main` branch).

2. **Build (CodeBuild)**  
   - Installs dependencies using `requirements.txt`  
   - Builds a Docker image using the `Dockerfile`  
   - Pushes the image to Docker Hub (or any registry)

3. **Deploy (CodeDeploy)**  
   - Pulls the image from Docker Hub on the EC2 instance  
   - Uses `appspec.yml` to run `scripts/stop-container.sh` and `scripts/start-container.sh`

---

## 📁 Project Structure

simple-python-flask-app/
├── app.py # Flask application
├── requirements.txt # Python dependencies
├── Dockerfile # Docker image instructions
├── buildspec.yml # CodeBuild build instructions
├── appspec.yml # CodeDeploy deployment instructions
├── scripts/
│ ├── start-container.sh # Starts the Docker container
│ └── stop-container.sh # Stops the Docker container
└── README.md # Project documentation


---

## 🚀 How to Deploy

1. **Fork or clone this repo**
2. **Set up AWS resources**: EC2 instance, CodeDeploy App## 📄 License

This project is open-source and free to use for learning and experimentation.& Deployment Group
3. **Connect GitHub repo to AWS CodePipeline**
4. **Provide DockerHub credentials via Parameter Store (for buildspec)**
5. **Push changes to main branch → CI/CD kicks in!**

---

## 📌 Notes

- Make sure your EC2 instance has Docker installed and IAM permissions for CodeDeploy.
- Your EC2 security group must allow inbound on port `5000` (Flask default).
- Scripts must have execution permission: `chmod +x scripts/*.sh`

---

## 📷 Sample Output

When deployed, open your EC2 public IP on port `5000`:

---

## 📄 License

This project is open-source and free to use for learning and experimentation.
