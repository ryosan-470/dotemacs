;;; 19-markdownmode.el --- Emacs Markdown Mode
;;; Commentary:
;;; Code:
(use-package markdown-mode
  :mode (("\\.text\\'" . markdown-mode)
         ("\\.md\\'" . markdown-mode)
         ("\\.markdown\\'" . markdown-mode)
         ;; open markdown file to set github flavored markdown
         ("README\\.md\\'" . gfm-mode)))
;;; 19-markdownmode.el ends here
