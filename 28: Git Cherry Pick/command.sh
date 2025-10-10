# 1. Go to clone working directory
# 2. Switch to feature branch, Do git log and copy the hash code commit
git switch feature

git log --oneline

# 3. Swith to master branch, Do git cherry-pick with hash code commit it
git switch master

git cherry-pick hashCode

# 4. Push to remote from master
git push origin master
