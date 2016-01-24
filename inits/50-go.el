;;; 50-go.el --- Golang
;;; Commentary:
;;; Code:
(add-hook 'before-save-hook 'gofmt-before-save)

(add-to-list 'load-path "~/.golang/src/github.com/nsf/gocode/emacs")

(add-hook 'go-mode-hook
          (lambda ()
            (local-set-key (kbd "C-c C-d") 'helm-go-doc)
            (local-set-key (kbd "M-t") 'godef-jump)
            (setq-default tab-width 4 indent-tabs-mode nil)
            (go-eldoc-setup)))

;; go helm tips
;; Ref: http://emacs-jp.github.io/programming/golang.html
(defvar my/helm-go-source
  '((name . "Helm Go")
    (candidates . (lambda ()
                    (cons "builtin" (go-packages))))
    (action . (("Show document" . godoc)
               ("Import package" . my/helm-go-import-add)))))

(defun my/helm-go-import-add (candidate)
  (dolist (package (helm-marked-candidates))
    (go-import-add current-prefix-arg package)))

(defun my/helm-go ()
  (interactive)
    (helm :sources '(my/helm-go-source) :buffer "*helm go*"))
;;; 50-go.el ends here
