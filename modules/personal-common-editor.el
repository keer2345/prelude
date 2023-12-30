(use-package mwim
	:bind
	(("C-a" . mwim-beginning-of-code-or-line)
	 ("C-e" . mwim-end-of-code-or-line)))

(global-set-key (kbd "C-z") 'undo)

(provide 'personal-common-editor)