;; flymake for java
(require 'flymake)
(defun flymake-java-init ()
  (flymake-simple-make-init-impl
   'flymake-create-temp-with-folder-structure nil nil
   buffer-file-name
   'flymake-get-java-cmdline))
(defun flymake-get-java-cmdline (source base-dir)
  (list "javac" (list "-J-Dfile.encoding=utf-8" "-encoding" "utf-8"
              source)))
(push '("\\.java$" flymake-java-init) flymake-allowed-file-name-masks)
(add-hook 'find-file-hook 'flymake-find-file-hook)
(add-hook 'java-mode-hook '(lambda () (flymake-mode t)))

;; Flymake for LaTeX
;; (defun flymake-get-tex-args (file-name)
;;   (list (expand-file-name "~/bin/flycheck_latex.sh") (list file-name)))
;; (push
;;   '("^\\ (\.+\.tex\\):\\ ([0-9]+\\):\\ ([0-9]+\\):\\ (.+\\)"
;;    nil 2 3 4) flymake-err-line-patterns)
 ;;;;;latex 
(defun flymake-tex-init ()
  (let* ((temp-file   (flymake-init-create-temp-buffer-copy
                       'flymake-create-temp-inplace))
         (local-dir   (file-name-directory buffer-file-name))
         (local-file  (file-relative-name
                       temp-file
                       local-dir)))
    (list "platex" (list "-file-line-error" "-interaction=nonstopmode" local-file))))
(defun flymake-tex-cleanup-custom ()
  (let* ((base-file-name (file-name-sans-extension (file-name-nondirectory flymake-temp-source-file-name)))
          (regexp-base-file-name (concat "^" base-file-name "\\.")))
    (mapcar '(lambda (filename)
                      (when (string-match regexp-base-file-name filename)
                         (flymake-safe-delete-file filename)))
                (split-string (shell-command-to-string "ls"))))
  (setq flymake-last-change-time nil))
(push '("\\.tex$" flymake-tex-init flymake-tex-cleanup-custom) flymake-allowed-file-name-masks)
(add-hook 'yatex-mode-hook 'flymake-mode-1)


(defun flymake-mode-1 ()
  (if (not (null buffer-file-name)) (flymake-mode))
  (local-set-key "\C-cd" 'flymake-display-err-minibuf))

(defun flymake-display-err-minibuf ()
  "Displays the error/warning for the current line in the minibuffer"
  (interactive)
  (let* ((line-err-info-list (nth 0 (flymake-find-err-info flymake-err-info (flymake-current-line-no))))
         (count (length line-err-info-list)))
    (while (> count 0)
      (when line-err-info-list
        (let* ((text (flymake-ler-text (nth (1- count) line-err-info-list)))
               (line (flymake-ler-line (nth (1- count) line-err-info-list))))
          (message "[%s] %s" line text)))
      (setq count (1- count)))))
