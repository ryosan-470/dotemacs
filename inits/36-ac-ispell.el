;;; 36-ac-ispell.el --- Auto Complete for English spells
;;; Commentary:
;;; Code:
(eval-after-load "auto-complete"
  '(progn
     (ac-ispell-setup)))

(add-hook 'git-commit-mode-hook 'ac-ispell-ac-setup)
(add-hook 'prog-mode-hook 'ac-ispell-setup)
(add-hook 'markdown-mode 'ac-ispell-setup)
;;; 36-ac-ispell.el ends here
