;;; 29-anzu.el --- Chrome の検索結果表示みたいな感じ
;;; Commentary:
;;; Code:
;; (require 'anzu)
(global-anzu-mode +1)

(custom-set-variables
 '(anzu-mode-lighter "")       ;; モードラインに表示されるマイナーモード名
 '(anzu-deactive-region t)     ;; 置換ハイライト
 '(anzu-search-threshold 100)  ;; 検索数上限値
 '(anzu-use-migemo nil))       ;; 日本語検索(migemo)の利用
;;; 29-anzu.el ends here
