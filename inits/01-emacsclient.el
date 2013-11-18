;; emacsclient
(require 'server)
(unless (server-running-p)
  (server-start))
