(use-package smartparens-mode
  :ensure smartparens  ;; install the package
  ;; :hook (prog-mode text-mode markdown-mode) ;; add `smartparens-mode` to these hooks
  :hook (markdown-mode) ;; add `smartparens-mode` to these hooks
  :config
  ;; load default config
  (require 'smartparens-config))

(use-package disable-mouse
  :init
  (global-disable-mouse-mode)
  :config
  (setq disable-mouse-mode-global-lighter ""))

(provide 'personal-common-utils)