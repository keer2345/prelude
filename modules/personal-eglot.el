;;; personal-eglot.el --- Insert description here -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:


(when (> emacs-major-version 28)
(defun my/eglot-organize-imports ()
  "Offer to execute the source.organizeImports code action."
  (interactive)
  (unless (eglot--server-capable :codeActionProvider)
    (eglot--error "Server can't execute code actions!"))
  (let* ((server (eglot--current-server-or-lose))
         (actions (jsonrpc-request
                   server
                   :textDocument/codeAction
                   (list :textDocument (eglot--TextDocumentIdentifier))))
         (action (cl-find-if
                  (jsonrpc-lambda (&key kind &allow-other-keys)
                    (string-equal kind "source.organizeImports" ))
                  actions)))
    (when action
      (eglot--dcase action
        (((Command) command arguments)
          (eglot-execute-command server (intern command) arguments))
        (((CodeAction) edit command)
          (when edit (eglot--apply-workspace-edit edit))
          (when command
            (eglot--dbind ((Command) command arguments) command
              (eglot-execute-command server (intern command) arguments)))))))))


(use-package eglot
	:defer t 
	;:hook (python-mode . eglot-ensure)
	 :bind (:map eglot-mode-map
              ("C-c i" . my/eglot-organize-imports)
              ("C-c f" . eglot-format)
              ("C-c r" . eglot-rename)
              ("C-c s" . toggle-string-to-fstring)
              ("C-<return>" . eglot-code-actions))
	)

(use-package consult-eglot)

(provide 'personal-eglot)
;;; personal-eglot.el ends here
