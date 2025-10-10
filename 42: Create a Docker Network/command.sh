# 1. Go to the server
# 2. Create docker network with driver mcvalen, subnet 192.168.0.0/24 and ip range 192.168.0.0/24 and the name is news
docker network create news -d mcvalen --subnet 192.168.0.0/24 --ip-range 192.168.0.0/24

# 3. You can check network is available
docker network ls
