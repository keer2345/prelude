;;
;; M-x customize-themes 

(prelude-require-packages 
	'(doom-themes 
	  dracula-theme))
;; (load-theme 'dracula t)

(use-package all-the-icons
  :if (display-graphic-p))

(use-package nerd-icons)

;; fira code
(use-package fira-code-mode
  :config (global-fira-code-mode))

(provide 'personal-common-ui)
