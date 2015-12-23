;;; init.el --- init.el
;;; Commentary:
;;; Code:
;; emacs -l init.el等で直接起動した時にuser-emacs-directoryが書き換わる
;; 詳細:http://d.hatena.ne.jp/syohex/20140923/1411445055
(when load-file-name
  (setq user-emacs-directory (file-name-directory load-file-name)))
;; elisp/ 下のディレクトリを全部読み込む
(let ((default-directory (concat user-emacs-directory "elisp")))
  (normal-top-level-add-subdirs-to-load-path))

;; el-get
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

;; el-get用のパッケージ定義ファイルの置き場
;; (add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-recipes")
;; el-get packages

(el-get-bundle init-loader)
;; Emacs Helm
(el-get-bundle helm)
(el-get-bundle helm-ag)
(el-get-bundle helm-descbinds)
(el-get-bundle helm-gtags)
(el-get-bundle helm-projectile
  :type github :pkgname "bbatsov/helm-projectile"
  :branch "master")

;; Syntax checker
(el-get-bundle flycheck/flycheck :depends (dash pkg-info let-alist cl-lib))
(el-get-bundle elpa:flycheck-pos-tip)
;; Programming
(el-get-bundle auto-complete :depends (seq popup))
(el-get-bundle auto-complete-clang)
;; OCaml
(el-get-bundle ocaml/tuareg)
(el-get-bundle the-lambda-church/merlin)

(el-get-bundle markdown-mode)
(el-get-bundle js2-mode)
(el-get-bundle ac-js2)
(el-get-bundle emmet-mode)
(el-get-bundle coffee-mode)
(el-get-bundle cython-mode)
(el-get-bundle epc)
(el-get-bundle jedi)
(el-get-bundle elpa:yatex)
(el-get-bundle scala-mode2)
(el-get-bundle web-mode)
(el-get-bundle smarty-mode)  ;; PHP Templete Engine
(el-get-bundle php-mode)
(el-get-bundle php-completion
  :type github :pkgname "suzuki/php-completion"
  :branch "develop")         ;; For PHP
;; golang
(el-get-bundle go-mode)
(el-get-bundle go-autocomplete)
(el-get-bundle go-eldoc)
(el-get-bundle helm-go-package)
;; Ruby
(el-get-bundle enhanced-ruby-mode)
(el-get-bundle ruby-electric)
(el-get-bundle ruby-block)
(el-get-bundle robe)
(el-get-bundle projectile-rails)
;; Utility
(el-get-bundle ace-jump-mode)
(el-get-bundle anzu)
(el-get-bundle diminish)
(el-get-bundle expand-region)
(el-get-bundle magit)
(el-get-bundle multiple-cursors)
(el-get-bundle popup)
(el-get-bundle popwin)
(el-get-bundle powerline)
(el-get-bundle prodigy)
(el-get-bundle projectile)
(el-get-bundle quickrun)
(el-get-bundle rainbow-delimiters)
(el-get-bundle smartparens)
(el-get-bundle tabbar)
(el-get-bundle undo-tree)
(el-get-bundle undohist)
(el-get-bundle visual-regexp)
(el-get-bundle whitespace-cleanup-mode)
(el-get-bundle yasnippet)
(el-get-bundle yaml-mode)
;; Themes
(el-get-bundle color-theme)
(el-get-bundle molokai-theme)
(el-get-bundle tangotango-theme)

;; init-loader
(require 'init-loader)
(custom-set-variables
  '(init-loader-show-log-after-init 'error-only))
(init-loader-load "~/.emacs.d/inits/")
;;; init.el ends here
