;;; 30-ace-jump-mode.el --- Jump Jump Jump!
;;; Commentary:
;;; Code:
(use-package ace-jump-mode
  :bind (("C-c SPC" . ace-jump-mode)
         ("C-u C-c SPC" . ace-jump-char-mode)
         ("C-u C-u C-c SPC" . ace-jump-line-mode)))
;;; 30-ace-jump-mode.el ends here
