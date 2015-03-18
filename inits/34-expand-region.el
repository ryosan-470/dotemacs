;;; 34-expand-region.el --- expand region increases the selected region
;;; Commentary:
;;; Code:
;; (require 'expand-region)
(define-key global-map (kbd "C-c @") 'er/expand-region)
(define-key global-map (kbd "C-c @") 'er/contract-region)
;;; 34-expand-region.el ends here
