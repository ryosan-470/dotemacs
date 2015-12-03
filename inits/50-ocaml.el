;;; 17-ocaml.el --- OCaml mode
;;; Commentary:
;;; Code:
;; Autocomplete for OCaml
;; (autoload 'merlin "merlin" nil t)
(setq opam-share (substring (shell-command-to-string "opam config var share 2> /dev/null") 0 -1))
(add-to-list 'load-path (concat opam-share "/emacs/site-lisp"))
(require 'merlin)
(add-hook 'tuareg-mode-hook 'merlin-mode)
(setq merlin-use-auto-complete-mode 'easy)
(define-key merlin-mode-map (kbd "C-c TAB") 'merlin-try-completion)
;; (define-key merlin-mode-map (kbd "C-c t") 'merlin-type-expr)
(define-key merlin-mode-map (kbd "C-c t") 'merlin-type-enclosing) ;; OCamlコード中の任意の型を教えてくれる
;;; 17-ocaml.el ends here
