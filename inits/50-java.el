;;; 39-java.el --- java conf
;;; Commentary:
;;; Code:
;; (require 'ajc-java-complete-config)
(autoload 'ajc-java-complete-mode "ajc-java-complete-config" nil t)
(add-hook 'java-mode 'ajc-java-complete-mode)
;;; 39-java.el ends here
