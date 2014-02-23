;; recentf-ext 最近開いたファイルを開く
(setq recentf-max-saved-items 500)
(require 'recentf-ext)
(global-set-key (kbd "C-x r f") 'recentf-open-files)
