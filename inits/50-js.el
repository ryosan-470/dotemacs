;;; 50-js.el --- JavaScript
;;; Commentary:
;;; Code:
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))
(setq js2-basic-offset 2)

(setq company-tern-property-maker "")
(defun company-tern-depth (candicate)
  "Return depth attirubute for CANDICATE. 'nil' entries are treated as 0"
  (let ((depth (get-text-property 0 'depth candicate)))
    (if (eq depth nil) 0 depth)))
(add-hook 'js2-mode-hook 'tern-mode)
(add-to-list 'company-backends 'company-tern)
(add-to-list 'company-backends '(company-tern :with company-dabbrev-code))
;;; 50-js.el ends here
