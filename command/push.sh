###### 推送操作 ######
# 推送到远程仓库
git push
# 强制推送到远程仓库（会出现覆盖。多人协同时慎用）
git push -f
# 推送指定分支到远程仓库（后面填写的分支与当前所在分支无关）
git push origin <branch-name>
# 推送指定分支到远程仓库。如果远程仓库没有该分支，则会在远程仓库自动创建该分支。只要关联上了，以后只用git push就可以进行推送了（除非远程仓库该分支有更新，那就得先pull下来）。参数是关联
# git push --set-upstream origin <branch-name>
git push -u origin <branch-name>
# 删除远程仓库的分支（注意这是分支名字，不包括origin）
git push origin --delete <branch-name>


