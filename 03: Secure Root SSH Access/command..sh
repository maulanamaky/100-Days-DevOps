# Step 1: Login to each server
ssh user@server

# Step 2: Edit sshd.config
sudo vi /etc/ssh/sshd.config

---
PermitRootLogin no

---

# Step 3: Restart SSHD
sudo systemctl restart sshd
