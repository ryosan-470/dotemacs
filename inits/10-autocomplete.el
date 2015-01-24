;;; 10-autocomplete.el --- Emacs Auto Complete Mode
;;; Commentary:
;;; Code:
(use-package auto-complete
  :bind (("C-c C-n" . ac-next)
         ("C-c C-p" . ac-previous))
  :config
  (ac-config-default)
  (setq ac-use-menu-map t)
  ;; 大文字と小文字を区別
  (custom-set-variables '(ac-ignore-case nil))
  (add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict"))

;; Auto Complete for Java
(use-package auto-java-complete
  :load-path ("elisp/auto-java-complete/")
  :mode (("\\.java\\'" . java-mode))
  :init (add-hook 'java-mode-hook 'ajc-java-complete-mode))

;; Auto Complete for C/C++
(use-package auto-complete-clang-async
  :load-path ("elisp/")
  :init
  (defun ac-cc-mode-setup ()
    (setq ac-clang-complete-executable "~/.emacs.d/clang-complete")
    (setq ac-sources '(ac-source-clang-async))
    (ac-clang-launch-completion-process))
  (defun my-ac-config ()
    (add-hook 'c-mode-common-hook 'ac-cc-mode-setup)
    (add-hook 'auto-complete-mode-hook 'ac-common-setup)
    (global-auto-complete-mode t))
  (my-ac-config))
;;; 10-autocomplete.el ends here
