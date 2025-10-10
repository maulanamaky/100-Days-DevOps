# 1. Go to the server
# 2. Make Dockerfile at path /opt/docker/
vi /opt/docker/Dockerfile

# 3. after that, build image that
docker build -t apache-image:latest /opt/docker

# 4. Run container with this image
docker run -d -p 8083:8083 --name apache-container apache-image:latest
