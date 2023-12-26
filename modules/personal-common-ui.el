;;
;; M-x customize-themes 

(prelude-require-packages 
	'(doom-themes 
	  dracula-theme))
;; (load-theme 'dracula t)

(use-package all-the-icons
  :if (display-graphic-p))

(provide 'personal-common-ui)
