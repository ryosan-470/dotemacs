;;; 35-emmet.el --- A fork of zencoding
;;; Commentary:
;;; Code:
(use-package emmet-mode
  :mode (("\\.html?\\'"  . sgml-mode))
  :init
  (add-hook 'sgml-mode-hook 'emmet-mode) ;; Auto-start on any markup modes
  (add-hook 'css-mode-hook  'emmet-mode) ;; enable Emmet's css abbreviation.
  :config
  (bind-keys :map emmet-mode-keymap ("TAB" . emmet-expand-line)))
;;; 35-emmet.el ends here
