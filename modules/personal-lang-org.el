
(setq org-directory (file-truename "~/workspace/org/"))
;; Must do this so the agenda knows where to look for my files
(setq org-agenda-files '("~/workspace/org/org-agenda"))

;; Follow the links when press <RET>
(setq org-return-follows-link  t)

;; Make the indentation look nicer
(add-hook 'org-mode-hook 'org-indent-mode)
;; Hide the markers so you just see bold text as BOLD-TEXT and not *BOLD-TEXT*
(setq org-hide-emphasis-markers t)

(provide 'personal-lang-org)