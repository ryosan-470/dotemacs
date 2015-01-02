;;; 34-expand-region.el --- expand region increases the selected region
;;; Commentary:
;;; Code:
(use-package expand-region
  :bind (("C-c @"   . er/expand-region)
         ("C-c -" . er/contract-region)))
;;; 34-expand-region.el ends here
