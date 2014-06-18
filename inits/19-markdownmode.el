(autoload 'markdown-mode "markdown-mode" "Major Mode for editing Markdown fils "t)
(add-to-list 'auto-mode-alist '("\\.text\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md\\'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown\\'" . markdown-mode))
;; open markdown file to set github flavored markdown
(add-to-list 'auto-mode-alist '("README\\.md\\'" . gfm-mode))
