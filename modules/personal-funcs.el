
;; https://github.com/zilongshanren/.emacs.d/blob/dbefa70/lisp/init-funcs.el

(defun av/auto-indent-method ()
  "Automatically indent a method by adding two newlines.
Puts point in the middle line as well as indent it by correct amount."
  (interactive)
  (newline-and-indent)
  (newline-and-indent)
  (forward-line -1)
  (cond ((eq major-mode 'rust-mode)
         (rust-mode-indent-line))
        ((eq major-mode 'dart-mode)
         (dart-indent-simple))
        (t (c-indent-line-or-region))))

(defun av/auto-indent-method-maybe ()
  "Check if point is at a closing brace then auto indent."
  (interactive)
  (let ((char-at-point (char-after (point))))
    (if (char-equal ?} char-at-point)
        (av/auto-indent-method)
      (newline-and-indent))))

(provide 'personal-funcs)