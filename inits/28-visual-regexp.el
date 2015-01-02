;;; 28-visual-regexp.el --- 正規表現のビジュアル表示
;;; Commentary:
;;; 正規表現に自身がなくて文字列置換に利用できていない人向けらしいです
;;; http://qiita.com/scalper/items/37d9c673ca0c72fec96b
;;; Code:
(use-package visual-regexp
  :bind (("C-c r" . vr/replace)
         ("C-c q" . vr/query-replace)
         ("C-c m" . vr/mc-mark)))
;;; 28-visual-regexp.el ends here
