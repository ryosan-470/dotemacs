;;; 00-basic.el --- 基本設定
;;; Commentary:
;;; Code:
;; Emacs Theme
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
;; (load-theme 'manoj-dark t)
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
;; Emacsが思い原因を解消できる?
;; http://qiita.com/takc923/items/acebbdae04994de16c6d
(setq linum-delay t)
(defadvice linum-schedule (around my-linum-schedule () activate)
  (run-with-idle-timer 0.2 nil #'linum-update-current))
;; F6で行番号を表示
(global-set-key [f6] 'linum-mode)
(setq linum-format "%3d ")
;; 同名ファイルバッファ名識別文字列の変更
;;(require 'uniquify)
;;(setq uniquify-buffer-name-style 'post-forward-angle-branckets)
;; zshを使う
(setq shell-file-name "/bin/zsh")
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
;; インデント関連の設定
;; TAB文字を無効化しTABを4スペースに変換するのがデフォルトにする
(setq-default indent-tabs-mode nil)
(setq-default tab-width 4)
(setq-default c-basic-offset 4)
;; (setq c-default-style '((java-mode . "java") (python-mode . "python") (other . "linux")))
(setq-default indent-tabs-mode nil) ;; スペースを使う
;; 自動インデント
(define-key global-map (kbd "RET") 'newline-and-indent)
;; 余分な空白をハイライト
(setq-default show-trailing-whitespace t)
;; 以下に上げられているモードでは無効化する
(defun my/disable-trailing-mode-hook ()
  "Disable show tail whitespace."
  (setq show-trailing-whitespace nil))

(defvar my/disable-trailing-modes
  '(comint-mode
    eshell-mode
    eww-mode
    term-mode
    ansi-term
    twittering-mode))

(mapc
 (lambda (mode)
   (add-hook (intern (concat (symbol-name mode) "-hook"))
             'my/disable-trailing-mode-hook))
 my/disable-trailing-modes)
;; *.zsh ファイルはsh-modeで開く
(add-to-list 'auto-mode-alist '("\\.zsh\\'" . sh-mode))
;; whitespace-cleanup-mode
(global-whitespace-cleanup-mode t)
;; byte-compile時のwarningを抑制する
;; http://www.gfd-dennou.org/member/uwabami/cc-env/EmacsBasic.html
;; Compile-Log の非表示
(let ((win (get-buffer-window "*Compile-Log*")))
  (when win (delete-window win)))
;; Warning の抑制
(setq byte-compile-warnings
      '(not
        free-vars
        unresolved
        callargs
        redefine
        ;; obsolete
        noruntime
        cl-functions
        interactive-only
        ;; make-local
        ))
;; tabbar
(tabbar-mode 1)
;; Disable mouse wheel
(tabbar-mwheel-mode -1)
;; not grouping
(setq tabbar-buffer-groups-function nil)
;; http://ser1zw.hatenablog.com/entry/2012/12/31/022359
(defun my-tabbar-buffer-list ()
  (delq nil
        (mapcar #'(lambda (b)
                    (cond
                     ;; Always include the current buffer.
                     ((eq (current-buffer) b) b)
                     ((buffer-file-name b) b)
                     ((char-equal ?\  (aref (buffer-name b) 0)) nil)
                     ((equal "*scratch*" (buffer-name b)) b) ; *scratch*バッファは表示する
                     ((char-equal ?* (aref (buffer-name b) 0)) nil) ; それ以外の * で始まるバッファは表示しない
                     ((buffer-live-p b) b)))
                (buffer-list))))
(setq tabbar-buffer-list-function 'my-tabbar-buffer-list)
;; 色設定 http://hico-horiuchi.hateblo.jp/entry/20121208/1354975316
(set-face-attribute ; バー自体の色
 'tabbar-default nil
 :background "white"
 :family "Inconsolata"
 :height 1.0)
(set-face-attribute ; アクティブなタブ
 'tabbar-selected nil
 :background "black"
 :foreground "white"
 :weight 'bold
 :box nil)
(set-face-attribute ; 非アクティブなタブ
 'tabbar-unselected nil
 :background "white"
 :foreground "black"
    :box nil)
;;; 00-basic.el ends here
