# 1. Go to the clone directory and your branch
git switch feature

# 2. Do git fetch from remote
git fetch origin

# 3. Do rebase from origin/master
git rebase origin/master

# 4. Push your branch to remote
git push origin feature --force
