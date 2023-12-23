# init.el

## 定义目录及文件变量:
- `prelude-user`： 设置成主机用户名
- `prelude-dir`：这里定义成 `(file-name-directory load-file-name)`，即 *~/.emacs.d*
- `prelude-core-dir`：即 *~/.emacs.d/core*
- `prelude-modules-dir`：即 *~/.emacs.d/modules*
- `prelude-personal-dir`：即 *~/.emacs.d/personal*
- `prelude-personal-preload-dir`：即 *~/.emacs.d/personal/preload*，想要优先 prelude 的配置可在这里添加
- `prelude-vendor-dir`：即 *~/.emacs.d/vendor*
- `prelude-savefile-dir`：即 *~/.emacs.d/savefile*
- `prelude-modules-file`：即 *~/.emacs.d/personal/prelude-modules.el*

定义函数 `prelude-add-subfolders-to-load-path`，遍历路径 parent-dir  下的文件，并将文件加载到 `load-path 列表


添加 load-path:
- 将 prelude-core-dir, prelude-modules-dir, prelude-vendor-dir 添加到 load-path 列表
- 将 prelude-vendor-dir 下的文件 添加到 load-path 列表

## 加载配置

- `prelude-packages`
- `prelude-custom`：必须在 `prelude-core` 之前加载
- `prelude-ui`
- `prelude-core`
- `prelude-mode`
- `prelude-editor`
- `prelude-global-keybindings`

## init.el 的其他配置
- 如果是 mac os，则加载 `prelude-macos`
- 如果是 linux os，则加载 `prelude-linux`
- 如果是 windows os，则加载 `prelude-windows`

## 加载个人配置

- 如果 *~/.emacs.d/personal/prelude-modules.el* 存在，则加载它；否则加载 *~/.emacs.d/sample/prelude-modules.el*。
- 加载自定义的 `custome.el`，比如字体、主题等