# 1. Go to the server and go to clone directory
# 2. Do git stash to sava your condition work latest
git stash

# 3. Do git list to see the list stash you have
git stash list

# 4. Use back your condition with pop and also automate delete it history stash
git stash pop stash@{1}
