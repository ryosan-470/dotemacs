;;; 16-python.el --- For Python configuration
;;; Commentary:
;;; Code:
(add-hook 'python-mode-hook
          '(lambda ()
             (define-key python-mode-map (kbd "TAB") nil)))

;; 関数一覧の表示
;; Qiita: EmacsのPython開発環境構築メモ
;; http://qiita.com/lambdasakura@github/items/ceb9bc6fb008c959ec4b
;;(semantic-mode 1)
;; (add-hook 'python-mode-hook
;;          (lambda ()
;;            (setq imenu-create-index-function 'python-imenu-create-index)))
;; ac-python
;; (require 'ac-python)
;; (add-to-list 'ac-modes 'python-2-mode)
;; Jedi.el - Python auto-completion for Emacs
(add-hook 'python-mode-hook 'jedi:ac-setup)
(setq jedi:complete-on-dot t)
;;; 16-python.el ends here
