;; 极简化（隐藏菜单栏）
(setq prelude-minimalistic-ui t)

;; 如果想在极简化下显示行号：
;; (global-display-line-numbers-mode)

;; relative line numbers
(setq display-line-numbers-type 'relative)

(add-to-list 'default-frame-alist '(width . 120))  ; 设定启动图形界面时的初始 Frame 宽度（字符数）
(add-to-list 'default-frame-alist '(height . 32))  ; 设定启动图形界面时的初始 Frame 高度（字符数）