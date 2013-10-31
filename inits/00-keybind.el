;; 00-keybind.el
;; coding:utf-8
;;load-path
(setq load-path (cons "~/.emacs.d/elisp" load-path))
(setq load-path (cons "~/.emacs.d/elpa" load-path))
;; 基本設定
(define-key global-map (kbd "C-z") 'undo)               ;undo
(define-key global-map (kbd "C-c i") 'indent-region)    ;インデント
(define-key global-map [?¥][?\\]); macのみ 円記号をバックスラッシュにする
(global-set-key (kbd "C-c ;") 'comment-or-uncomment-region) ;; コメントアウト
;; カーソル点滅の停止
(blink-cursor-mode 0)
;; 対応するカッコを光らせる
(show-paren-mode 1)
;; ウィンドウに収まらない時だけ括弧内を光らせる
(setq show-paren-style 'mixed)
;; 現在行を目立たせる
(global-hl-line-mode)
;; バックアップファイルを作らない
(setq backup-inhibited t)
;; 終了時にオートセーブファイルを消す
(setq delete-auto-save-files t)
;; スペルチェック
(setq-default flyspell-mode t)
(setq ispell-dictionary "american")
;;置換(対話型) query-replace
(global-set-key (kbd "C-c q") 'query-replace)
;;置換(非対話型) replace-string
(global-set-key (kbd "C-c r") 'replace-string)
;; Window Move
(global-set-key (kbd "C-c <left>")  'windmove-left)
(global-set-key (kbd "C-c <down>")  'windmove-down)
(global-set-key (kbd "C-c <up>")    'windmove-up)
(global-set-key (kbd "C-c <right>") 'windmove-right)
;; カーソルのあるウィンドウを閉じる
(define-key global-map (kbd "M-0") 'delete-window)
;; 他のウィンドウを全て閉じる
(define-key global-map (kbd "M-1") 'delete-other-windows)
;; ウィンドウを上下に分割
(define-key global-map (kbd "M-2") 'split-window-vertically)
;; ウィンドウを左右に分割
(define-key global-map (kbd "M-3") 'split-window-horizontally)
;; shell-command
(global-set-key (kbd "M-s") 'shell-command)
;; C-k 1回で行全体を削除
(setq kill-whole-line t)
;; Auto spell check
(setq-default flyspell-mode t)
(setq ispell-dictionary "american")
;; Copy and Paste
(global-set-key "\C-w" 'clipboard-kill-region)
(global-set-key "\M-w" 'clipboard-kill-ring-save)
(global-set-key "\C-y" 'clipboard-yank)
;; 行番号表示の設定
(global-linum-mode t)
;;F6で行番号を表示
(global-set-key [f6] 'linum-mode)
;;Line mergine
(setq linum-format "%3d ")
;; Japanese Input & Show Settings
(prefer-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(setq default-buffer-file-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(set-clipboard-coding-system 'utf-8)
