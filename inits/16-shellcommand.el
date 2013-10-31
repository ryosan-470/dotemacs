;; shell command autocomplete
(require 'shell-command)
(shell-command-completion-mode)
;; hide input when password input 
(add-hook 'comint-output-filter-functions
          'comint-watch-for-password-prompt)
