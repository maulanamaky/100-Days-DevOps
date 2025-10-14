# 1. Go to the server
# 2. Pull image from registry
docker pull nginx:stable

# 3. Make container from that image and mapping port 5003 for host and 80 for container
docker run --name ecommerce -d -p 5003:80 nginx:stable
