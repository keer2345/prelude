
(use-package typescript-ts-mode
  :init
  ;; Associate cts files with `typescript-ts-mode'.
  (add-to-list 'auto-mode-alist (cons "\\.cts\\'" 'typescript-ts-mode))
  (add-hook 'typescript-ts-mode-hook #'eglot-ensure)
  :custom (typescript-ts-mode-indent-offset 4)
  :ensure nil
  :config
  (define-key typescript-ts-mode-map (kbd "RET") 'av/auto-indent-method-maybe))


(provide 'personal-lang-ts)