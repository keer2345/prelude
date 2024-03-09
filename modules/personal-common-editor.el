(use-package mwim
	:bind
	(("C-a" . mwim-beginning-of-code-or-line)
	 ("C-e" . mwim-end-of-code-or-line)))

;; https://stackoverflow.com/questions/26222076/emacs-delete-up-to-the-beginning-of-next-word-like-vim-dw
(defun keer/forward-kill-whitespace-or-word ()
  "If `point' is followed by whitespace kill that.
Otherwise call `kill-word'"
  (interactive)
  (if (looking-at "[ \t\n]")
      (let ((pos (point)))
        (re-search-forward "[^ \t\n]" nil t)
        (backward-char)
        (kill-region pos (point)))
    ;(kill-word 1)))
    (sp-kill-word 1)))

(setq whitespace-line-column 120) ;; limit line length

(global-set-key (kbd "C-z") 'undo)
(global-set-key (kbd "M-d") 'keer/forward-kill-whitespace-or-word)

(use-package hungry-delete
  :bind (("M-<backspace>" . hungry-delete-backward)))

(use-package drag-stuff)

(provide 'personal-common-editor)
