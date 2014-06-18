;; 00-keybind.el
;; load-path
(setq load-path (cons "~/.emacs.d/elisp" load-path))
(setq load-path (cons "~/.emacs.d/elpa" load-path))
;; 基本設定
;; undo
(define-key global-map (kbd "C-z") 'undo)
;; インデント
(define-key global-map (kbd "C-c i") 'indent-region)
;; コメントアウト
(global-set-key (kbd "C-c ;") 'comment-or-uncomment-region)
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
;; 置換 (対話型) query-replace
(global-set-key (kbd "C-c q") 'query-replace)
;; 置換 (非対話) replace-string
(global-set-key (kbd "C-c r") 'replace-string)
;; Window Move
(global-set-key (kbd "C-c <left>") 'windmove-left)
(global-set-key (kbd "C-c <down>") 'windmove-down)
(global-set-key (kbd "C-c <up>") 'windmove-up)
(global-set-key (kbd "C-c <right>") 'windmove-right)
;; カーソルのあるウィンドウを閉じる
(define-key global-map (kbd "M-0") 'delete-window)
;; 他のウィンドウをすべて閉じる
(define-key global-map (kbd "M-1") 'delete-other-windows)
;; ウィンドウを上下に分割
(define-key global-map (kbd "M-2") 'split-window-vertically)
;; ウィンドウを左右に分割
(define-key global-map (kbd "M-3") 'split-window-horizontally)
;;ファイル名補完 大文字小文字の区別をしない
(setq completion-ignore-case t)
;; 補完時に大文字小文字の区別をしない
(setq read-buffer-completion-ignore-case t)
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
;; magit-status
(define-key global-map (kbd "C-x g") 'magit-status)
;; GC間隔の変更
(setq gc-cons-threshold 134217728)
;;ファイル名の補完で大文字小文字を無視
(setq read-file-name-completion-ignore-case t)
;; C-c t シェルを開く
(define-key global-map (kbd "C-c t") 'shell-mode)
;; C-x c f で byte-compile-file
(global-set-key (kbd "C-c C-b") 'byte-compile-file)
;; メニューバーを非表示
(menu-bar-mode -1)
