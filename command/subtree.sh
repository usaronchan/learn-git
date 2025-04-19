###### subtree (用于替代submodule) ######
git subtree

# 将hello-world仓库main分支的代码添加到根目录下命名为hello-world
git subtree add --prefix=hello-world git@github.com:chanzz0/hello-world.git main


# 推送回hello-world仓库（推送前需要先提交）
# 注意该命令是只推送到子仓库，本地仓库还没有推送上去（还需要git push进行推送操作）
git subtree push --prefix=hello-world git@github.com:chanzz0/hello-world.git main



# 以一个分支新开一个工作树
git worktree add <path> <branch-name>
# 查看工作树
git worktree list
# 移除工作树
git worktree remove <dir>

