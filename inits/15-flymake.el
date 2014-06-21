;; Flymake for java
(require 'flymake)
(defun flymake-java-init ()
  (flymake-simple-make-init-impl
   'flymake-create-temp-with-folder-structure nil nil
   buffer-file-name
   'flymake-get-java-cmdline))
(defun flymake-get-java-cmdline (source base-dir)
  (list "javac" (list "-J-Dfile.encoding=utf-8" "-encoding" "utf-8" source)))
(push '("\\.java$" flymake-java-init) flymake-allowed-file-name-masks)
(add-hook 'find-file-hook 'flymake-find-file-hook)
(add-hook 'java-mode-hook '(lambda () (flymake-mode t)))
