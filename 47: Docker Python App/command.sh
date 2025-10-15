# 1. Go to server
# 2. Make Dockerfile under /python_app
sudo vi /python_app/Dockerfile

# 3. Make image from Dockerfile
docker build -t nautilus/python-app /python_app

# 4. Make container
docker run -d --name nautilus_python -p 8089:6000 nautilus/python-app

# 5. Check the container running
curl localhost:8089
