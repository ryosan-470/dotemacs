;;; 30-ace-jump-mode.el --- Jump Jump Jump!
;;; Commentary:
;;; Code:
(use-package ace-jump-mode
  :bind (("C-c SPC" . ace-jump-mode)
         ("C-c C-u SPC" . ace-jump-char-mode)
         ("C-c C-u C-u SPC" . ace-jump-line-mode)))
;;; 30-ace-jump-mode.el ends here
