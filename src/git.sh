########################### 初始化操作 ###########################
# 初始化一个 git 仓库
git init
# 克隆仓库
git clone <url> [name]

# 添加远程仓库（关联远程仓库的地址）
git remote add <remote-name> <url>


# 添加文件到缓存区（一般都提交所有文件，需要忽略处理的操作配合.gitignore来实现）
git add .
# 提交到本地仓库（引号内填写提交信息）。提交信息一般要写明此次提交的详情
git commit -m "<message>"

# 创建分支
git branch <branch-name>
# 切换到某分支
# git checkout <branch-name>
git switch <branch-name>
# 删除某分支。如果该分支没有完全合并的话，就会报错
# git branch --delete <branch-name>
git branch -d <branch-name>
# 强制删除某分支
git branch -D <branch-name>
# 删除远程分支
git branch -d --remote <origin-brnach-name>

# 合并分支（将指定分支合并到当前分支）
git merge <branch-name>
# 推送到远程仓库
git push
# 推送指定分支到远程仓库（后面填写的分支与当前所在分支无关）
git push origin <branch-name>
# 推送指定分支到远程仓库（需要填上传信息）
# git push --set-upstream origin <branch-name>
git push -u origin <branch-name>

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
# 切换到指定提交版本（回退到指定提交版本）
# hard会直接删除代码
# soft不会直接删除，会保留一份，自己可以手动修改
git reset --hard <commit ID>
git reset --soft <commit ID>


########################### 检查操作 ###########################
# 查看文件状态
git status
# 查看提交历史记录
git log

# 查看当前所在的分支（列出本地的所有分支）
git branch --local
git branch
# 列出远程的所有分支
git branch --remote
git branch -r
# 列出本地和远程的所有分支
git branch --all
git branch -a

# 查看远程仓库
# git remote
git remote -v


########################### 标签操作 ###########################
# 列出所有标签
git tag
# 创建标签
git tag <tag-name>
# 将标签推送到远程仓库
git push origin <tag-name>
# 切换到某标签（要写切换到哪个分支）
git checkout -b <branch-name> <tag-name>




