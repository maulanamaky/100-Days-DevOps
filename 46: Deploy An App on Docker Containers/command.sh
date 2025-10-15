# 1. Go to the server
# 2. Go to directory and Make file docker-compose.yml
cd /opt/devops && sudo vi docker-compose.yml

# 3. Run the compose
sudo docker compose up -d

# 4. Check the running program
curl stapp03:3002
