###### 标签相关 ######
# 列出所有标签
git tag
# 创建标签
git tag <tag-name>
# 推荐使用这种方式创建标签
git tag -a <tag-name> -m "<tag-message>"
# 给某一个commit创建标签
git tag -a <tag-name> <commit-SHA1-value>
# 删除标签
git tag -d <tag-name>

# 将单个标签推送到远程仓库
git push origin <tag-name>
# 切换到某标签（要写切换到哪个分支）
git checkout -b <branch-name> <tag-name>

# 推送所有标签到远程仓库
git push origin --tags
