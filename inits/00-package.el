(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)
(defvar installing-package-list
  '(    
    magit
    gitconfig-mode
    gitignore-mode
    flycheck
    flycheck-color-mode-line
    flymake
    google-translate
    mode-compile
    markdown-mode
    python-mode
    recentf-ext
    undo-tree
    undohist
    esup ;; emacs startup profiler
    matlab-mode ;; matlab syntax
    rainbow-delimiters ;; カッコ色付け
    smartparens
    ace-jump-mode
    yasnippet
    helm
    ;; Python Auto Completion
    jedi
    deferred
    epc
    ctable

    anzu
    visual-regexp
    quickrun
    yasnippet
    ))

(let ((not-installed (loop for x in installing-package-list
			   when (not (package-installed-p x))
			   collect x)))
  (when not-installed
    (package-refresh-contents)
    (dolist (pkg not-installed)
      (package-install pkg))))
