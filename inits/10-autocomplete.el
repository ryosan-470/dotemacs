;; 10-autocomplete.el
;; Auto Complete Mode
(add-to-list 'load-path "~/.emacs.d/elisp/autocomplete/")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/elisp/autocomplete//ac-dict")
(ac-config-default)
(setq ac-use-menu-map t)
(define-key ac-menu-map "C-n" 'ac-next)
(define-key ac-menu-map "C-p" 'ac-previous)
