;;; 00-keybind.el -- Config for Emacs keybinds
;;; Commentary:
;;; Code:
;; 基本設定
;; undo
(define-key global-map (kbd "C-z") 'undo)
;; インデント
(define-key global-map (kbd "C-c i") 'indent-region)
;; コメントアウト
(global-set-key (kbd "C-c ;") 'comment-or-uncomment-region)
;; ここらへんは 28-virtrual-regexp.el を使っている
;; 置換 (対話型) query-replace
;; (global-set-key (kbd "C-c q") 'query-replace)
;; 置換 (非対話) replace-string
;; (global-set-key (kbd "C-c r") 'replace-string)
;; Window Move
(global-set-key (kbd "C-c <left>") 'windmove-left)
(global-set-key (kbd "C-c <down>") 'windmove-down)
(global-set-key (kbd "C-c <up>") 'windmove-up)
(global-set-key (kbd "C-c <right>") 'windmove-right)
;; カーソルのあるウィンドウを閉じる
(define-key global-map (kbd "C-c w c") 'delete-window)
;; 他のウィンドウをすべて閉じる
(define-key global-map (kbd "C-c w o") 'delete-other-windows)
;; ウィンドウを上下に分割
(define-key global-map (kbd "C-c w h") 'split-window-vertically)
;; ウィンドウを左右に分割
(define-key global-map (kbd "C-x w v") 'split-window-horizontally)
;; magit keybind
(define-key global-map (kbd "C-x g") 'magit-status)
;; C-c t シェルを開く
(define-key global-map (kbd "C-c t") 'shell-mode)
;; C-x c f で byte-compile-file
(global-set-key (kbd "C-c C-b") 'byte-compile-file)
(global-set-key (kbd "C-x <down>") 'scroll-up)
(global-set-key (kbd "C-x <up>") 'scroll-down)
;;; 00-keybind.el ends here
