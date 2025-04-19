###### 分支相关 ######
# 查看当前所在的分支（列出本地的所有分支）
git branch --local
git branch
# 列出远程的所有分支
git branch --remote
git branch -r
# 列出本地和远程的所有分支
git branch --all
git branch -a

# 查看分支详情，推荐直接使用
git branch -vv

# 创建分支
git branch <branch-name>
# 切换到某分支
# git checkout <branch-name>
git switch <branch-name>
# 创建新的分支并切换到该分支上（相当于两条命令）
# git checkout -b <name>   ===  git branch <name> && git checkout <name>
git switch -c <name>
# 删除某分支。如果该分支没有完全合并的话，就会报错
# git branch --delete <branch-name>
git branch -d <branch-name>
# 强制删除某分支
git branch -D <branch-name>
# 在本地删除远程分支
git branch -d --remote <origin-brnach-name>
# 在远程仓库中删除远程分支（后面是分支名，不是远程分支）
git push origin -d <brnach-name>

# 将当前分支重命名为新分支
git branch -m <new-branch-name>

# 合并分支（将指定分支合并到当前分支）
git merge <branch-name>

