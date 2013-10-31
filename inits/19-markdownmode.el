(autoload 'markdown-mode "markdown-mode"
  "Major Mode for editing Markdown fils "t)
(add-to-list 'auto-mode-alist '("\\.text'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.markdown'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.md'" . markdown-mode))
