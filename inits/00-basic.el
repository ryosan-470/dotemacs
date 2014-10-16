;;; 00-basic.el --- 基本設定
;;; Commentary:
;;; Code:
;; load-path
(setq load-path (cons "~/.emacs.d/elisp" load-path))
;;; 背景を透過に設定
(set-frame-parameter nil 'alpha 70)
;; Emacs Theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
;; (load-theme 'manoj-dark t)
;;; codic
(add-to-list 'load-path "~/.emacs.d/elisp/emacs-codic")
(require 'codic)
;;; TAB -> 4 Space
(setq-default tab-width 4 indent-tabs-mode nil)
;; カーソル点滅の停止
(blink-cursor-mode 0)
;; 対応するカッコを光らせる
(show-paren-mode 1)
;; ウィンドウに収まらない時だけ括弧内を光らせる
(setq show-paren-style 'mixed)
;; 現在行を光らせる
;; (global-hl-line-mode t)
;; バックアップファイルを作らない
(setq backup-inhibited t)
;; 終了時にオートセーブファイルを消す
(setq delete-auto-save-files t)
;;ファイル名補完 大文字小文字の区別をしない
(setq completion-ignore-case t)
;; 補完時に大文字小文字の区別をしない
(setq read-buffer-completion-ignore-case t)
;;ファイル名の補完で大文字小文字を無視
(setq read-file-name-completion-ignore-case t)
;; 行番号設定
(global-linum-mode t)
;; F6で行番号を表示
(global-set-key [f6] 'linum-mode)
(setq linum-format "%3d ")
;; 同名ファイルバッファ名識別文字列の変更
;;(require 'uniquify)
;;(setq uniquify-buffer-name-style 'post-forward-angle-branckets)
;; zshを使う
(setq shell-file-name "/bin/zsh")
;; 背景透過
(set-frame-parameter nil 'alpha 80 )
;; 起動メッセージの省略
(setq inhibit-startup-message t)
;; リージョンをハイライト
(setq-default transient-mark-mode t)
;; yes or no to y-or-n
(defalias 'yes-or-no-p 'y-or-n-p)
;; GC間隔の変更
(setq gc-cons-threshold 134217728)
;; メニューバーを非表示
(menu-bar-mode -1)

;;; 00-basic.el ends here
