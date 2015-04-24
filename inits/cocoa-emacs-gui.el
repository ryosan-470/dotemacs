;;; cocoa-emacs-gui.el --- Emacs GUI configuration for OSX
;;; Commentary:
;;; Code:
(when window-system
  (progn
    (load-theme 'tangotango t)
    (set-face-attribute 'default nil :family "ricty" :height 150)
    (set-fontset-font (frame-parameter nil 'font)
                      'japanese-jisx0208
                      (font-spec :family "Hiragino Kaku Gothic ProN"))
    (add-to-list 'face-font-rescale-alist
                 '(".*Hiragino Kaku Gothic ProN.*" . 1.2))
    (set-frame-parameter nil 'alpha 80)
    (menu-bar-mode 0)
    (tool-bar-mode 0)))
;;; cocoa-emacs-gui.el ends here
