;;; 30-ace-jump-mode.el --- Jump Jump Jump!
;;; Commentary:
;;; Code:
;; (require 'ace-jump-mode)
(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)
(define-key global-map (kbd "C-c C-c SPC") 'ace-jump-char-mode)
(define-key global-map (kbd "C-c C-c C-c SPC") 'ace-jump-line-mode)
;;; 30-ace-jump-mode.el ends here
