;;; 10-autocomplete.el --- Emacs Auto Complete Mode
;;; Commentary:
;;; Code:
;;; Auto Complete
;;; 読み込みと初期設定
(require 'auto-complete-config nil 'noerror)
(ac-config-default)
(ac-flyspell-workaround)
(global-auto-complete-mode t)  ;; すべてのモードで補完を有効にする
(define-key ac-menu-map (kbd "C-c C-n") 'ac-next)
(define-key ac-menu-map (kbd "C-c C-p") 'ac-previous)
(ac-config-default)
(setq ac-use-menu-map t)
;; 大文字と小文字を区別
(custom-set-variables '(ac-ignore-case nil))
(add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")

;; Auto Complete for C/C++
(add-to-list 'load-path "~/.emacs.d/elisp/emacs-clang-complete-async")
(require 'auto-complete-clang-async nil t)
(defun ac-cc-mode-setup ()
  (setq ac-clang-complete-executable "~/.emacs.d/clang-complete")
  (setq ac-sources '(ac-source-clang-async))
  (ac-clang-launch-completion-process))
(defun my-ac-config ()
  (add-hook 'c-mode-common-hook 'ac-cc-mode-setup)
  (add-hook 'c++-mode-hook 'ac-cc-mode-setup)
  (add-hook 'auto-complete-mode-hook 'ac-common-setup)
  (global-auto-complete-mode t))
(my-ac-config)

;; Auto Complete for Java (use-packageではうまく動いてくれない)
(add-hook 'java-mode-hook 'ajc-java-complete-mode)
(add-hook 'find-file-hook 'ajc-4-jsp-find-file-hook)
;;; 10-autocomplete.el ends here
