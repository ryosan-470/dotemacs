;;; 16-script-lang.el --- Emacs configulation for Script language, Python, Ruby, Perl!!
;;; Commentary:
;;; Code:
;;; For Python
(require 'python-mode)
(add-to-list 'auto-mode-alist '("\\.py$"  . python-mode))
;; indent
(add-hook 'python-mode-hook
          '(lambda ()
             (setq indent-tabs-mode nil)
             (setq indent-level 4)
             (setq python-indent 4)
             (setq tab-width 4)))

;; 関数一覧の表示
;; Qiita: EmacsのPython開発環境構築メモ
;; http://qiita.com/lambdasakura@github/items/ceb9bc6fb008c959ec4b
(semantic-mode 1)
(add-hook 'python-mode-hook
          (lambda ()
            (setq imenu-create-index-function 'python-imenu-create-index)))
;; ac-python
;; (require 'ac-python)
;; (add-to-list 'ac-modes 'python-2-mode)
;; Jedi.el - Python auto-completion for Emacs
(require 'jedi)
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)
;;; 16-script-lang.el ends here
