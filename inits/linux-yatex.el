;;; linux-yatex.el --- YaTeX for Linux distribution
;;; Commentary:
;;; Code:
(require 'yatex)
(setq auto-mode-alist
      (cons (cons "\\.tex$" 'yatex-mode) auto-mode-alist))
(autoload 'yatex-mode "yatex" "Yet Another LaTeX mode" t)
(setq tex-command "platex")
(setq dviprint-command-format "dvipdfmx %s")
;; Preview
(setq dvi2-command "gnome-open")
(setq bibtex-command "pbibtex")
;;; linux-yatex.el ends here
