;; 24-aspell.el
;; Require to install aspell
;; Ubuntu : sudo apt-get install aspell aspell-en
;; Darwin : brew install aspell --lang=en
(setq-default ispell-program-name "aspell")
(eval-after-load "ispell"
  '(add-to-list 'ispell-skip-region-alist '("[^\000-\377]+")))

;; flyspell 動的チェッカ
(global-set-key (kbd "C-c <f8>") 'flyspell-mode)
(global-set-key (kbd "C-c a <f8>") 'flyspell-buffer)

(add-to-list 'auto-mode-alist '("\\.md" . flyspell-mode))
(add-to-list 'auto-mode-alist '("\\.tex" . flyspell-mode))
(add-hook 'text-mode-hook 'flyspell-mode)
