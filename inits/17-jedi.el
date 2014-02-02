;; 17-jedi.el
(add-to-list 'load-path "~/.emacs.d/elisp/emacs-deferred")
(add-to-list 'load-path "~/.emacs.d/elisp/emacs-epc")
(add-to-list 'load-path "~/.emacs.d/elisp/emacs-ctable")
(add-to-list 'load-path "~/.emacs.d/elisp/emacs-jedi")
(require 'jedi)
(add-hook 'python-mode-hook 'jedi:ac-setup)
(setq jedi:complete-on-dot t)
