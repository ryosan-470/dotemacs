;; helm.el
(add-to-list 'load-path "~/.emacs.d/elpa/")
(require 'helm-config)
(global-set-key (kbd "C-c h") 'helm-mini)
(helm-mode 1)
