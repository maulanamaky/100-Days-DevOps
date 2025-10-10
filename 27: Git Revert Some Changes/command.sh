# 1. Go to clone working directory
# 2. Do git revert for make a new commit without the commit who its problem
git revert --no-commit HEAD

# 3. Commit after revert
git commit -m "Revert Cluster"
