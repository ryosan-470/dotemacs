;; 日本語入力切り替えを半角，全角キーで行う
(require 'mozc)
(global-set-key (kbd "<zenkaku-hankaku>") 'toggle-input-method)
(set-language-environment "Japanese")
(setq default-input-method "japanese-mozc")
(add-hook 'mozc-mode-hook
  (lambda ()
    (define-key mozc-mode-map (kbd "<zenkaku-hankaku>") 'toggle-input-method)))
