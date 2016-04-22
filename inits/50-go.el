;;; 50-go.el --- Golang
;;; Commentary:
;;; Code:
(setq gofmt-command "goimports")
(add-hook 'before-save-hook 'gofmt-before-save)

(add-to-list 'load-path "~/.golang/src/github.com/nsf/gocode/emacs")

(add-hook 'go-mode-hook
          (lambda ()
            (local-set-key (kbd "C-c C-d") 'helm-go-doc)
            (local-set-key (kbd "M-t") 'godef-jump)
            (setq-default tab-width 4 indent-tabs-mode nil)
            (go-eldoc-setup)))

(add-to-list 'go-mode-hook 'company-go)
(add-to-list 'company-backends 'company-go)
;;; 50-go.el ends here
