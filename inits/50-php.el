;;; 50-php.el --- For PHP configuration
;;; Commentary:
;;; Code:
(add-to-list 'auto-mode-alist '("\\.php?\\'" .  php-mode))

(add-hook 'php-mode-hook
          (lambda ()
            (helm-gtags-mode t) ;; Enable helm gtags mode on PHP mode
            (require 'ac-php-company)
            (add-to-list 'company-backends 'company-ac-php-backend)
            ;; 定義元へジャンプ
            (define-key php-mode-map (kbd "M-t") 'ac-php-find-symbol-at-point)
            ;; 戻る
            (define-key php-mode-map (kbd "C-x p") 'ac-php-location-stack-back)
            ))
;;; 50-php.el ends here
