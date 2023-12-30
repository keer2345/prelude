(use-package dashboard
  :config
  (setq dashboard-banner-logo-title "Welcome to Emacs!") ;; 个性签名，随读者喜好设置
  (setq dashboard-projects-backend 'projectile) ;; 读者可以暂时注释掉这一行，等安装了 projectile 后再使用
  (setq dashboard-startup-banner 'official) ;; 也可以自定义图片
  (setq dashboard-items '((recents  . 5)   ;; 显示多少个最近文件
        (projects . 10) ;; 显示多少个最近项目
			  (bookmarks . 5)  ;; 显示多少个最近书签
        )) 

  (setq dashboard-display-icons-p t) ;; display icons on both GUI and terminal
  (setq dashboard-icon-type 'nerd-icons) ;; use `nerd-icons' package
  ;; (setq dashboard-icon-type 'all-the-icons) ;; use `all-the-icons' package

  (setq dashboard-set-file-icons t)
  (dashboard-setup-startup-hook))

(provide 'personal-common-dashboard)
