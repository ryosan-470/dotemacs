;;; init.el --- init.el
;;; Commentary:
;;; Code:
;;; Cask
(require 'cask "~/.cask/cask.el")
(cask-initialize)

;;; use-package
(require 'use-package)
(use-package pallet)

(require 'init-loader)
(init-loader-load "~/.emacs.d/inits/")
;;; init.el ends here

