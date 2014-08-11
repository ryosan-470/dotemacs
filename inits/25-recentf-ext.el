;;; 25-recentf-ext.el --- 最近開いたファイルを開く
;;; Commentary:
;;; Code:
(setq recentf-max-saved-items 500)
(require 'recentf-ext)
(global-set-key (kbd "C-x r f") 'recentf-open-files)
;;; 25-recentf-ext.el ends here
