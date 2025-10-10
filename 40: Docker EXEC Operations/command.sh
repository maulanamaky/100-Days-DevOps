# 1. Go to the server with SSH
# 2. exec the container running
docker exec -it kkloud bash

# 3. install apache2 in container
apt update -y && apt install apache2 -y

# 4. Change port apache2 from http to 8089
sed -i 's/Listen 80/Listen 8089/' /etc/apache2/ports.conf

sed -i 's/<Virtualhost \*:80>/<Virtualhost *:8089>/' /etc/apache2/sites-available/000-default.conf

# 5. Make sure apache2 is running
service apache2 start
