;;; 02-helm.el --- Emacs Helm
;;; Commentary:
;;; Code:
(global-set-key (kbd "C-c h") 'helm-mini)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-x C-r") 'helm-recentf)
(global-set-key (kbd "M y")     'helm-show-kill-ring)
(global-set-key (kbd "C-c i")   'helm-imenu)
(global-set-key (kbd "C-x b")   'helm-buffers-list)
(global-set-key (kbd "C-c b")   'helm-descbinds)      ;;; キーバインド表示
(global-set-key (kbd "C-c s")   'helm-ag)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-h") 'delete-backward-char)
;;; 02-helm.el ends here
