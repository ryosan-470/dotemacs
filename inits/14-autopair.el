;; 14-autopair.el
;; カッコの自動補完
(require 'flex-autopair)
(flex-autopair-mode 1)
;; YaTeX modeの時はdisable
(setq flex-autopair-disable-modes '(yatex-mode))
