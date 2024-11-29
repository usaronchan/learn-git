# Git

获取 Git 的仓库只有两种方式

1. `git init`: 空仓库建议使用这种方式
2. `git clone <name>`: 已有仓库使用这种方式（大多数情况下都使用这种方式）

## 分支使用

- 永久分支
  - main (master): 主分支（部署生产分支）。一般不会直接推送到该分支，主要靠合并的方式进行更新
    - 只能通过合并 release 分支和 hotfix 分支进行更新
  - develop: 开发分支。该分支保存了开发的最新代码。
- 临时分支
  - release: 预发布分支。
  - test: 测试分支。
  - hotfix: 修复 bug 分支
  - feature: 具体功能开发的分支。
    - 只与 develop 分支进行交互
  - todo: Todo 分支。
