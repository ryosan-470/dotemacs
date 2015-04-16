;;; 23-quickrun.el --- Emacs Quickrun
;;; Commentary:
;;; Code:
;;; Quickrun Python command runs Python 3
(quickrun-add-command "python"
                      '((:command . "python3"))
                      :override t)
;;; 23-quickrun.el ends here
