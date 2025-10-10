# 1. Go to the server
# 2. Do pull image from registry docker hub
docker pull busybox:musl

# 3. retag image
docker tag busybox:musl busybox:media
