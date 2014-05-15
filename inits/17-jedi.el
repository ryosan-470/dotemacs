;; 17-jedi.el
(require 'jedi)
(add-hook 'python-mode-hook 'jedi:ac-setup)
(setq jedi:complete-on-dot t)
