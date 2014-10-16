;;; 02-helm.el --- Emacs Helm
;;; Commentary:
;;; Code:
;; (define-minor-mode overriding-minor-mode
;;    "" t "" `((, (kbd "C-c h") . helm-mini))) ;; どんなマイナーモードにもC-c hを取られないようにする
(use-package helm
             :bind (("C-c h"   . helm-mini)
                    ("C-x C-f" . helm-find-files)
                    ("M-y"     . helm-show-kill-ring)
                    ("C-c i"   . helm-imenu)
                    ("C-c b"   . helm-buffers-list)
                    ("C-c k"   . helm-descbinds)
                    ("C-c s"   . helm-ag)
                    ("M-x"     . helm-M-x))
             :config)
;;; 02-helm.el ends here
