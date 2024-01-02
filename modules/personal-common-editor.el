(use-package mwim
	:bind
	(("C-a" . mwim-beginning-of-code-or-line)
	 ("C-e" . mwim-end-of-code-or-line)))

(defun forward-kill-whitespace-or-word ()
  "If `point' is followed by whitespace kill that.
Otherwise call `kill-word'"
  (interactive)
  (if (looking-at "[ \t\n]")
      (let ((pos (point)))
        (re-search-forward "[^ \t\n]" nil t)
        (backward-char)
        (kill-region pos (point)))
    (kill-word 1)))
(global-set-key (kbd "M-d") 'forward-kill-whitespace-or-word)

(setq whitespace-line-column 120) ;; limit line length


(global-set-key (kbd "C-z") 'undo)

(provide 'personal-common-editor)