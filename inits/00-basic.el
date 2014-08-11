;;; 00-basic.el --- 基本設定
;;; Commentary:
;;; Code:
;;; 背景を透過に設定
(set-frame-parameter nil 'alpha 70)

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
;; (load-theme 'manoj-dark t)

;;; codic
(add-to-list 'load-path "~/.emacs.d/elisp/emacs-codic")
(require 'codic)
;;; 00-basic.el ends here
