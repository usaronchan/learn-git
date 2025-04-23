

# 假设目前所在分支main，而dev分支上有3次提交记录
# 如果直接使用以下的方式来合并，dev上的3次提交纪录也都会合并过来。但这不是我们想看到的

git merge dev
git rebase dev

##########################



# 如果是提交历史不相关的分支
git merge <branch-name> --allow-unrelated-histories
