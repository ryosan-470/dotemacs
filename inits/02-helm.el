;;; 02-helm.el --- Emacs Helm
;;; Commentary:
;;; Code:
;; (define-minor-mode overriding-minor-mode
;;    "" t "" `((, (kbd "C-c h") . helm-mini))) ;; どんなマイナーモードにもC-c hを取られないようにする
;;; 02-helm.el ends here
;; key bindings
(add-hook 'helm-gtags-mode-hook
          '(lambda ()
             ;; 入力されたタグの定義元へジャンプ
             (local-set-key (kbd "M-t") 'helm-gtags-find-tag)
             ;; 入力タグを参照する場所へジャンプ
             (local-set-key (kbd "M-r") 'helm-gtags-find-rtag)
             ;; 入力したシンボルを参照する場所へジャンプ
             (local-set-key (kbd "M-s") 'helm-gtags-find-symbol)
             ;; タグ一覧からタグを選択しその定義元にジャンプする
             (local-set-key (kbd "M-l") 'helm-gtags-select)
             ;; ジャンプする前の場所へ戻る
             (local-set-key (kbd "C-x t") 'helm-gtags-pop-stack)))

(add-hook 'php-mode-hook 'helm-gtags-mode)
