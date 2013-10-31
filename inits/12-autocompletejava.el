;; 12-autocompletejava
;; ajc-java-complete
(add-to-list 'load-path "~/.emacs.d/elisp/auto-java-complete")
(require 'ajc-java-complete-config)
(add-hook 'java-mode-hook 'ajc-java-complete-mode)
(add-hook 'find-file-hook'ajc-4-jsp-find-file-hook)
