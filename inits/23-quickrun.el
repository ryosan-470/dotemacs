;;; 23-quickrun.el --- Emacs Quickrun
;;; Commentary:
;;; Code:
(global-set-key (kbd "C-c c") 'quickrun)
;;; Quickrun with argument
(global-set-key (kbd "C-c a c") 'quickrun-with-arg)
;;; Quickrun Python command runs Python 3
(quickrun-add-command "python"
                      '((:command . "python3"))
                      :override t)
;;; 23-quickrun.el ends here
