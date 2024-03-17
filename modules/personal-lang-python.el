;;; personal-lang-python.el --- Insert description here -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

;; https://www.bilibili.com/video/BV1K34y1q7QX
;; https://github.com/elbeno/dotemacs/blob/main/.emacs.d/python-modes.el

;; https://www.adventuresinwhy.com/post/eglot/
;; https://gist.github.com/Nathan-Furnal/b327f14e861f009c014af36c1790ec49

;; pip3 install "python-lsp-server[all]"

;;------------------------------------------------------------------------------
;; manage python imports
(unless (> emacs-major-version 28)
(use-package py-isort
  :commands (py-isort-before-save)))

;;------------------------------------------------------------------------------
;; elpy
;;
;; If slowly after install elpy, we can execute  `M-x elpy-rpc-reinstall-virtualenv`
;; See here:
;; https://stackoverflow.com/questions/76378780/elpy-rpc-in-emacs-gives-exited-abnormally-with-code-1-error-and-unexpected-out
;; https://github.com/jorgenschaefer/elpy/issues/1936
;;
(use-package elpy
  :init
  (elpy-enable)
  :config
  (defun my/elpy-mode ()
    (add-hook 'before-save-hook 'py-isort-before-save nil t)
    (add-hook 'before-save-hook 'elpy-black-fix-code nil t)
    (setq python-shell-interpreter "python3"
          python-indent-offset 4
          elpy-rpc-python-command "python3"
          elpy-rpc-timeout 10)
    (setq flycheck-python-flake8-executable "python3"
          flycheck-python-pycompile-executable "python3"
          flycheck-python-pylint-executable "python3")
    (flycheck-mode)
    (flycheck-select-checker 'python-flake8)
    (bind-keys :map flycheck-mode-map
               ("M-<down>" . flycheck-next-error)
               ("M-<up>" . flycheck-previous-error))
    (elpy-mode))
  :bind (:map elpy-mode-map
              ("M-k" . elpy-check)
              ("C-c f" . elpy-black-fix-code)
              ("C-c s" . toggle-string-to-fstring)
              ("M-<up>" . nil)
              ("M-<down>" . nil))
  :hook ((python-mode . my/elpy-mode)
         (python-ts-mode . my/elpy-mode)))

;; tree-sitter
;; Open python files in tree-sitter mode.
(add-to-list 'major-mode-remap-alist '(python-mode . python-ts-mode))


;;------------------------------------------------------------------------------
;; eglot
(when (> emacs-major-version 28)
(use-package eglot
  :config
  (defun my/python-eglot-config ()
    (eglot-ensure)
    (add-hook 'before-save-hook 'eglot-format-buffer nil t)
    (add-hook 'before-save-hook 'my/eglot-organize-imports nil t))
  (fset #'jsonrpc--log-event #'ignore)
  :bind (:map eglot-mode-map
              ("M-<up>" . flymake-goto-prev-error)
              ("M-<down>" . flymake-goto-next-error))
  :hook ((python-mode . my/python-eglot-config)
         (python-ts-mode . my/python-eglot-config))))


(provide 'personal-lang-python)
;;; personal-lang-python.el ends here
