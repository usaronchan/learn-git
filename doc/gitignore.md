## gitignore

- `.gitignore` 是一个忽略 git 跟踪的配置文件。
- 如果 git 仓库里已经存在了某个文件，再通过 `.gitignore` 来配置的话，是无法成功忽略的。
  - 因为 git 一旦开始追踪某个文件，就会一直追踪下去的
  - 可以使用 `git rm --cached <filename>` 来清理 git 仓库里该文件的哈希值。但文件本身还是存在在文件夹中，只不过在 git 仓库里面是被“删除”了
