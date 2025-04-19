########################### 不推荐使用的操作 ###########################
# 子模块（不太推荐，最好使用git subtree）
# 在提交的时候不会修改这个文件夹里面的内容。
# 只有在你仓库需要依赖这个子模块的时候才需要
git submodule add <url>

# 查看子模块的状态
git submodule status
# 更新子模块
git submodule update --remote

