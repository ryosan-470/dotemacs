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
(eval-after-load 'emmet-mode
  '(progn
     (define-key emmet-mode-keymap (kbd "C-c TAB")  'emmet-expand-line)))


(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb?\\'" .  web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl?\\'" .  smarty-mode))
;; jinja2
(add-to-list 'auto-mode-alist '("\\.jinja2?\\'" . jinja2-mode))
;; SCSS
(add-to-list 'auto-mode-alist '("\\.css$" . scss-mode))
(add-to-list 'auto-mode-alist '("\\.scss$" . scss-mode))

(add-hook 'smarty-mode-hook
          (lambda ()
            (setq c-tab-always-indent nil) ; [TAB] キーで、TABコードを入力
            (indent-tabs-mode t)))

;; Web-mode
(setq web-mode-html-offset 4)
(setq web-mode-php-offset 4)


(add-hook 'jinja2-mode-hook
          (lambda ()
            (setq-default tab-width 4 indent-tabs-mode nil)
            (emmet-mode t)))

;; for scss
(defun scss-custom ()
  "scss-mode-hook"
  (and
   (set (make-local-variable 'css-indent-offset) 2)
   (set (make-local-variable 'scss-compile-at-save) nil)))

(add-hook 'scss-mode-hook
          '(lambda () (scss-custom)))
;;; 35-emmet.el ends here
