# 初始化一个 git 仓库
git init
# 克隆仓库
git clone <url> [name]


# 添加文件到缓存区
git add
# 提交（后面双引号内填写提交信息）。提交信息一般要写明此次提交的详情
git commit -m "<message>"
# 查看当前所在的分支
git branch
# 创建分支
git branch <name>
# 切换到某分支
# git checkout <name>
git switch <name>

# 合并分支
git merge
# 推送到远程仓库
git push

# 抓取（但没合并）
git fetch
# 拉取（相当于两条命令）   ===  git fetch <name> && git merge <name>
git pull


########################### 分支操作 ###########################
# 创建新的分支并切换到该分支上（相当于两条命令）
# git checkout -b <name>   ===  git branch <name> && git checkout <name>
git switch -c <name>

# 取消暂存（也就是git commit的回退）
git reset <filename>
# 切换到指定提交版本
git reset --hard <commit ID>



# 查看文件状态
git status
# 查看提交历史记录
git log


# 查看远程仓库
# git remote
git remote -v
# 添加远程仓库
git remote add <remote-name> <url>

