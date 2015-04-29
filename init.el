;;; init.el --- init.el
;;; Commentary:
;;; Code:
;;; Cask
;; emacs -l init.el等で直接起動した時にuser-emacs-directoryが書き換わる
;; 詳細:http://d.hatena.ne.jp/syohex/20140923/1411445055
(when load-file-name
  (setq user-emacs-directory (file-name-directory load-file-name)))
;; elisp/ 下のディレクトリを全部読み込む
(let ((default-directory (concat user-emacs-directory "elisp")))
  (normal-top-level-add-subdirs-to-load-path))

(require 'cask "~/.cask/cask.el")
(cask-initialize)
;; (let ((default-directory (expand-file-name "~/.emacs.d/.cask/")))
;;   (add-to-list 'load-path default-directory)
;;   (if (fboundp 'normal-top-level-add-subdirs-to-load-path)
;;             (normal-top-level-add-subdirs-to-load-path)))

(require 'init-loader)
(custom-set-variables
  '(init-loader-show-log-after-init 'error-only))
(init-loader-load "~/.emacs.d/inits/")
;;; init.el ends here
