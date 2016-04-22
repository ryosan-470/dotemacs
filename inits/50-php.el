;;; 50-php.el --- For PHP configuration
;;; Commentary:
;;; Code:
(add-to-list 'auto-mode-alist '("\\.php?\\'" .  php-mode))

(add-hook 'php-mode-hook
          (lambda ()
            (helm-gtags-mode t) ;; Enable helm gtags mode on PHP mode
            (php-completion-mode t)
            ;; (setq ac-php-use-cscope-flag t) ;; Enable cscope
            (setq ac-sources
                  '(ac-source-php
                    ac-source-words-in-same-mode-buffers
                    ac-source-php-completion
                    ac-source-filename))
            (yas-global-mode 1)
            ;; 定義元へジャンプ
            (define-key php-mode-map (kbd "M-t") 'ac-php-find-symbol-at-point)
            ;; 戻る
            (define-key php-mode-map (kbd "C-x p") 'ac-php-location-stack-back)
            ))
;;; 50-php.el ends here
