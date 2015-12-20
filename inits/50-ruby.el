;;; 50-ruby.el --- for Ruby
;;; Commentary:
;;; Code:
(add-to-list 'auto-mode-alist '("\\.rb$" . enh-ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile$" . enh-ruby-mode))

(add-hook 'enh-ruby-mode-hook
          '(lambda ()
             (ruby-electric-mode t)
             (setq ruby-electric-expand-delimiters-list nil)
             (ruby-block-mode t)
             (setq ruby-block-highlight-toggle t)
             (add-to-list 'ac-modes 'enh-ruby-mode)
             (add-to-list 'ac-modes 'web-mode)))
;;; 50-ruby.el ends here
