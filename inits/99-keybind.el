;;; 99-keybind.el --- global key
;;; Commentary:
;;; キーバインドルール
;;; ここにはグローバルに設定するキーバインドを載せている.
;;; C-x は実行系の意味
;;; C-c は編集に関連するものとするが慣れてしまったものなどは別
;;; Code:
;;; undo
(global-set-key (kbd "C-z") 'undo)
;; インデント
(global-set-key (kbd "C-c i") 'indent-region)
;; コメントアウト
(global-set-key (kbd "C-c ;") 'comment-or-uncomment-region)
;; ここらへんは 28-virtrual-regexp.el を使っている
;; 置換 (対話型) query-replace
;; (global-set-key (kbd "C-c q") 'query-replace)
;; 置換 (非対話) replace-string
;; (global-set-key (kbd "C-c r") 'replace-string)
;; Window Move
(global-set-key (kbd "C-x <left>")  'windmove-left)
(global-set-key (kbd "C-x <down>")  'windmove-down)
(global-set-key (kbd "C-x <up>")    'windmove-up)
(global-set-key (kbd "C-x <right>") 'windmove-right)
;; カーソルのあるウィンドウを閉じる
(global-set-key (kbd "M-0") 'delete-window)
(global-set-key (kbd "C-x w c") 'delete-window)
;; 他のウィンドウをすべて閉じる
(global-set-key (kbd "M-1") 'delete-other-windows)
(global-set-key (kbd "C-x w o") 'delete-other-windows)
;; ウィンドウを上下に分割
(global-set-key (kbd "M-3") 'split-window-vertically)
(global-set-key (kbd "C-x w h") 'split-window-vertically)
;; ウィンドウを左右に分割
(global-set-key (kbd "M-2") 'split-window-horizontally)
(global-set-key (kbd "C-x w v") 'split-window-horizontally)
;; magit keybind
(global-set-key (kbd "C-x g") 'magit-status)
;; C-c t シェルを開く
(global-set-key (kbd "C-x t") 'shell-mode)
;; C-x c f で byte-compile-file
(global-set-key (kbd "C-c C-b") 'byte-compile-file)
;; (global-set-key (kbd "C-x <down>") 'scroll-up)
;; (global-set-key (kbd "C-x <up>")   'scroll-down)
;; Emacs Helm Helm Prefix key is C-h
(global-set-key (kbd "C-h m") 'helm-mini)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "M-y")   'helm-show-kill-ring)
(global-set-key (kbd "C-h i") 'helm-imenu)
(global-set-key (kbd "C-h b") 'helm-buffer-list)
(global-set-key (kbd "C-h k") 'helm-descbinds)
(global-set-key (kbd "C-h s") 'helm-ag)
(global-set-key (kbd "M-x")   'helm-M-x)

;; FlyCheck
(global-set-key (kbd "C-c p") 'flycheck-previous-error)
(global-set-key (kbd "C-c n") 'flycheck-next-error)
(global-set-key (kbd "C-c l") 'flycheck-list-errors)
(global-set-key (kbd "C-c f") 'flycheck-first-error)

;; quickrun
(global-set-key (kbd "C-c c") 'quickrun)
;;; Quickrun with argument
(global-set-key (kbd "C-c C-a") 'quickrun-with-arg)
;;; Quickrun execute region
(global-set-key (kbd "C-c C-r") 'quickrun-region)

;; visual-regexp
(global-set-key (kbd "C-c r") 'vr/replace)
(global-set-key (kbd "C-c q") 'vr/query-replace)
(global-set-key (kbd "C-c m") 'vr/mc-mark)

;; multiple-cursors
(global-set-key (kbd "C-c C-n") 'mc/mark-next-like-this)
(global-set-key (kbd "C-c C-p") 'mc/mark-previous-lines)
(global-set-key (kbd "C-c C-a") 'mc/mark-all-like-this)
(global-set-key (kbd "C-c C-e") 'mc/edit-lines)

;; ace-jump-mode
(global-set-key (kbd "C-c SPC")              'ace-jump-mode)
(global-set-key (kbd "C-c C-c SPC")          'ace-jump-char-mode)
(global-set-key (kbd "C-c C-c C-c SPC")      'ace-jump-line-mode)

;; expand-region
(global-set-key (kbd "C-c @") 'er/expand-region)

;; cua-mode
(global-set-key (kbd "C-x SPC") 'cua-set-rectangle-mark)
;;; 99-keybind.el ends here
