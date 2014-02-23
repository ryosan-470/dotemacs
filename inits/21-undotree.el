;;21-undotree.el
;; undo-hist ファイルを閉じても再度undo-treeを使える
(require 'undohist nil t)
(undohist-initialize)
;; undo-tree
(require 'undo-tree)
(global-undo-tree-mode t)
(global-set-key (kbd "C-x u") 'undo-tree-redo)
