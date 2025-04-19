# 也要学会使用 IDE 来进行 Git 操作
########################### 基础操作 ###########################
# 初始化git仓库（提交到远程空仓库。如果不是空仓库，只能使用clone）
git init
# 克隆仓库。后面跟的是别名，默认是github仓库的名字
git clone <url> [name]
# 添加文件到缓存区（一般都是提交工作目录下的所有文件，需要忽略处理的操作使用.gitignore来实现）
git add .
# 提交到本地仓库（引号内填写提交信息）。提交信息一般要写明此次提交的相关详情
git commit -m "<message>"

########################### 常用命令 ###########################
# 查看文件状态
git status
# 查看提交历史记录
git log
# 查看远程仓库和本地仓库的分支情况（需要联网）
# 可以看出来远程分支是否落后于本地分支，落后就合并
git branch -vv
# 查看远程仓库和本地仓库的各个分支的详情（需要联网）
git remote show origin






# 先抓取，然后在本地可以看到文件的该更
git fetch
# 后从本地的远程分支进行合并
git merge origin/<branch-name>

git fetch -v
git merge origin <branch-name>






########################### 高级操作 ###########################
# 一般现有任务还没提交的时候，就要处理事情的时候就可以使用暂时高起。
# 暂时存起来，不需要提交commit
git stash
# 恢复工作
git stash pop
######## 分割线 ########
# 快速克隆一个仓库（也就是只克隆最新版本的代码，没有历史提交代码）
git clone <url> --depth=1
# 添加远程仓库（关联远程仓库的地址）。这个操作一般都是同一个仓库提交到两个远程仓库
git remote add <remote-name> <url>
######## 分割线 ########

# 修改上一次提交的提交信息
git commit --amend
git commit --amend -m "<message>"

# 直接将工作区的内容直接提交到本地仓库（不需要add）
git commit -a
########################### 示例操作 ###########################
# 平时使用chanzz分支进行更新备份。最多合并下dev中的代码
git branch -vv
git switch chanzz
git add .
git commit -m "update"

git merge dev

# 开发阶段新增一个功能，从chanzz进行拉取
git branch -vv
git switch dev
git merge chanzz

# 主分支（生产分支），等发布一个版本时使用（专门从dev拉取）
git branch -vv
git switch main
git merge dev







