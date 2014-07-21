;;; 10-autocomplete.el
;;; Dictionary PATH
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
(ac-config-default)
(setq ac-use-menu-map t)
(define-key ac-menu-map "C-n" 'ac-next)
(define-key ac-menu-map "C-p" 'ac-previous)

;; 大文字と小文字を区別
(custom-set-variables '(ac-ignore-case nil))
