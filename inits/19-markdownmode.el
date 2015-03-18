;;; 19-markdownmode.el --- Emacs Markdown Mode
;;; Commentary:
;;; Code:
(require 'markdown-mode)
(add-to-list 'auto-mode-alist '("\\.text\\'"      . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'"  . markdown-mode))
;;; Open markdown file to set Github flavored markdown
(add-to-list 'auto-mode-alist '("\\.md\\'"        . gfm-mode))
(add-to-list 'auto-mode-alist '("README\\.md\\'"        . gfm-mode))
;;; 19-markdownmode.el ends here
