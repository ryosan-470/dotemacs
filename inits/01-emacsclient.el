;;; 01-emacsclient.el -- emacsclient
;;; Commentary:
;;; Code:
(require 'server)
(unless (server-running-p)
  (server-start))
;;; 01-emacsclient.el ends here
