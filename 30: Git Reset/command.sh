# 1. Go to clone working directory
# 2. Do git log to get hash code commit
git log --oneline

# 3. Do git reset type: hard
git reset --hard hashCode

# 4. push to remote
git push origin master --force
