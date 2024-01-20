;;
;; M-x customize-themes 

(prelude-require-packages 
	'(doom-themes 
	  dracula-theme))
;; (load-theme 'dracula t)

(use-package all-the-icons
  :if (display-graphic-p))

(use-package nerd-icons)

;; Disable line numbers for some modes
;
; (dolist (mode '(org-mode-hook
; 								term-mode-hook
; 								shell-mode-hook
; 								eshell-mode-hook))
; 	(add-hook mode (lambda () (display-line-numbers-mode 0))))


(if (display-graphic-p)
	(progn
		(add-to-list 'default-frame-alist '(width . 124))  ; 设定启动图形界面时的初始 Frame 宽度（字符数）
		(add-to-list 'default-frame-alist '(height . 40))  ; 设定启动图形界面时的初始 Frame 高度（字符数）
	))

(set-face-attribute 'default nil :font "Fira Code Retina")

(use-package doom-modeline
  :init (doom-modeline-mode 1))



(provide 'personal-common-ui)
