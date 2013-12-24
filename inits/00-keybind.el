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
(global-hi-line-mode)
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
;; カーソルのあるウィンドウを閉じる
(define-key global-map (kbd "M-3") 'split-window-horizontally)
;; C-k 1回で行全体を削除
(setq kill-whole-line t)
;; ファイル名補完 大文字小文字の区別をしない
(setq completion-ignore-case t)
;; 行番号設定
(global-linum-mode t)
;; F6で行番号を表示
(global-set-key [f6] 'linum-mode)
