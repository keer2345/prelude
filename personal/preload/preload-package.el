;; chinese mirrors of tsinghua
;; (setq package-archives '(("gnu"   . "http://mirrors.tuna.tsinghua.edu.cn/elpa/gnu/")
;;                          ("melpa" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/melpa/")
;;                          ("melpa-stable" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/stable-melpa/")
;;                          ("org" . "http://mirrors.tuna.tsinghua.edu.cn/elpa/org/")))

;; chinese mirrors of ustc
(setq package-archives '(("gnu" . "https://mirrors.ustc.edu.cn/elpa/gnu/")
                          ("melpa" . "https://mirrors.ustc.edu.cn/elpa/melpa/")
                          ("nongnu" . "https://mirrors.ustc.edu.cn/elpa/nongnu/")
                          ("melpa-stable" . "http://mirrors.ustc.edu.cn/elpa/stable-melpa/")
                          ("org" . "http://mirrors.ustc.edu.cn/elpa/org/")))

;; if want to connect host raw.githubusercontent.com , we could eanble:
;;
;; (setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3") ; 不加这一句可能有问题，建议读者尝试一下
;; (setq url-proxy-services '(("no_proxy" . "^\\(192\\.168\\..*\\)")
;;                      ("http" . "127.0.0.1:8889")
;;                      ("https" . "127.0.0.1:8889")))
