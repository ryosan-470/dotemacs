(require 'cask "~/.cask/cask.el")
(cask-initialize)

(let ((sub-directory (expand-file-name "~/.emacs.d/elisp")))
  (add-to-list 'load-path sub-directory))

(require 'init-loader)
(setq init-loader-show-log-after-init nil)
(init-loader-load "~/.emacs.d/inits")
