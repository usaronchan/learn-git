###### Pull ######
git pull
# 相当于
git fetch
git merge

git pull --rebase
# 相当于
git fetch
git rebase origin/main

git pull --ff-only
# 相当于
git fetch
git merge --ff-only origin/main

git pull --ff
# 相当于
git fetch
# Fast-forward
git merge --ff origin/main




# 强制拉取（会覆盖本地仓库）
git pull -f

# 实际上强制覆盖就是变基操作
git pull --rebase
