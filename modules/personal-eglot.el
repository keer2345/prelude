;;; personal-eglot.el --- Insert description here -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:



(use-package eglot
	:defer t 
	;:hook (python-mode . eglot-ensure)
	 :bind (:map eglot-mode-map
              ("C-c f" . eglot-format)
              ("C-c r" . eglot-rename)
              ("C-c s" . toggle-string-to-fstring)
              ("C-<return>" . eglot-code-actions))
	)


(provide 'personal-eglot)
;;; personal-eglot.el ends here
