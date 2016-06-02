;;; 50-ruby.el --- for Ruby
;;; Commentary:
;;; Code:
(add-to-list 'auto-mode-alist '("\\.rb$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile$" . enh-ruby-mode))

(eval-after-load 'company '(push 'company-robe company-backends))

(add-hook 'enf-ruby-mode-hook 'robe-mode)

;; ruby-end endなどを自動挿入する
(add-hook 'enh-ruby-mode-hook
          '(lambda ()
             (abbrev-mode 1)
             (electric-indent-mode t)
             (electric-layout-mode t)
             (setq flycheck-checker 'ruby-rubylint)))
;;; 50-ruby.el ends here
