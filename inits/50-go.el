;;; 50-go.el --- Golang
;;; Commentary:
;;; Code:
(add-hook 'before-save-hook 'gofmt-before-save)

(add-to-list 'load-path "~/.golang/src/github.com/nsf/gocode/emacs")

(autoload 'helm-godoc "helm-godoc" nil t)
(add-hook 'go-mode-hook
          (lambda ()
                  (local-set-key (kbd "C-c C-d") 'helm-go-doc)
                  (local-set-key (kbd "M-t") 'godef-jump)
                  (setq-default tab-width 4 indent-tabs-mode nil)
                  ))
;;; 50-go.el ends here
