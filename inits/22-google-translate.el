;;; 22-google-translate.el --- Use translate.google.com at Emacs
;;; Commentary:
;;; Code:
(require 'google-translate)
;; keybind
;; C-x C-t で選択項目を翻訳
(global-set-key (kbd "C-x C-t") 'google-translate-at-point)
;; C-x t で翻訳したい
(global-set-key (kbd "C-x t") 'google-translate-query-translate)
;; 翻訳のデフォルト en --> ja
(custom-set-variables
  '(google-translate-default-source-language "en")
  '(google-translate-default-target-language "ja"))
;; popwin.el
(require 'popwin)
(setq display-buffer-function 'popwin:display-buffer)
;; ポップアップを画面下に表示
(setq popwin:popup-window-position 'bottom)
;; google-translate.elの翻訳バッファをポップアップで表示させる
(push '("*Google Translate*") popwin:special-display-config)
;;; 22-google-translate.el ends here
