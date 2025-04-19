########################### 初始化操作 ###########################
# 抓取（但没合并）
# 也就是说同步远程分支到本地，但本地分支没有同步更新。所以后面还是需要通过git merge origin/<branch-name>进行本地分支的更新
git fetch
# 拉取（相当于两条命令）   ===  git fetch && git merge origin/<branch-name>
git pull
########################### 分支操作 ###########################
# 取消暂存（也就是git commit的回退）
git reset <filename>
# 切换到指定提交版本（回退到指定提交版本）
# hard会直接删除代码
# soft不会直接删除，会保留一份，自己可以手动修改
git reset --hard <commit ID>
git reset --soft <commit ID>
###### 检查操作 ######
# 合并分支
git merge <branch-name>

# 远程仓库没有的分支，在本地仓库可以通过以下命令进行删除（要先进行上一步的联网操作）
git remote prune
git fetch --prune

########################### 标签操作 ###########################
# 删除远程的所有标签（这个是根据本地标签列表来操作的，所以要完全删除干净，要先同步）
git tag -l | xargs -n 1 git push --delete origin
# 推送所有标签到远程仓库
git push origin --tags
# 删除本地所有标签后拉取远程所有标签
git tag -l | xargs git tag -d
git fetch

########################### 其他操作 ###########################
# 切换到某个提交版本
git checkout <commit-ID>

git rebase
# 如果rebase之前已经push到远程仓库了，那么rebase后再push就会出错（当然，强制push是没有问题的）

git fetch --verbose
git fetch -v

git pull -v

git cherry-pick <commit-ID>



git log

git log --oneline


# 仅仅是还原单个文件，而不删除之后的commit
# 这种方式基本上会完整保留先前的历史纪录，是一种安全性较高的做法
git checkout -- <file>

# 如果是将全部文件回退到之前的某个版本，先前的历史纪录舍弃
# 这种操作是不可逆的，注意备份
git reset --hard <commit-ID>


########################### 常用命令 ###########################
# 当分支不相关时使用这个命令
git pull origin <branch-name> --allow-unrelated-histories

########################### 高级操作 ###########################





