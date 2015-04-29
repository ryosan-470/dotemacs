;;; cocoa-emacs-yatex.el --- YaTeX for OSX
;;; Commentary:
;;; Code:
;; Add library path
(require 'yatex)
;; YaTeX mode
(setq auto-mode-alist
    (cons (cons "\\.tex$" 'yatex-mode) auto-mode-alist))
(autoload 'yatex-mode "yatex" "Yet Another LaTeX mode" t)
(setq tex-command "platex")
(setq dviprint-command-format "dvipdfmx %s")
;; use Preview.app
(setq dvi2-command "open -a Preview")
(setq bibtex-command "pbibtex")
;;; cocoa-emacs-yatex.el ends here
