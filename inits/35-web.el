;;; 35-web.el -- Emacs Web Developing mode
;;; Commentary:
;;; Code:
(add-hook 'sgml-mode-hook 'emmet-mode)
(add-hook 'css-mode-hook 'emmet-mode)
(add-hook 'php-mode-hook 'emmet-mode)
(add-hook 'web-mode-hook 'emmet-mode)
(add-hook 'emmet-mode-hook (lambda () (setq emmet-indentation 4))) ;; Indent 4 spaces
;; Emmetの補完機能をC-jではなくTABにする機能
;; ただしこれを有効化するとTABによるインデントが死ぬので廃止する
;; コードは将来のために残しておく
;; (eval-after-load 'emmet-mode
;;   '(progn
;;      (define-key emmet-mode-keymap (kbd "TAB")  'emmet-expand-line)))

(add-to-list 'auto-mode-alist '("\\.php?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl?\\'" . smarty-mode))
(add-hook 'smarty-mode-hook 'php-mode)
;; Web-mode
(setq web-mode-html-offset 4)
(setq web-mode-php-offset 4)

(add-hook 'php-mode-hook
  '(lambda()
     (setq tab-width 4)
     (setq indent-tabs-mode t)
     (setq c-basic-offset 4)
     (php-completion-mode t)
     (define-key php-mode-map (kbd "C-o") 'phpcmp-complete)
     (make-local-variable 'ac-sources)
     (set ac-sources '(
                       ac-sources-words-in-same-mode-buffers
                       ac-sources-php-completion
                       ac-sources-filename
                       ))))
;;; 35-emmet.el ends here
