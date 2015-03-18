;;; 02-helm.el --- Emacs Helm
;;; Commentary:
;;; Code:
;; (define-minor-mode overriding-minor-mode
;;    "" t "" `((, (kbd "C-c h") . helm-mini))) ;; どんなマイナーモードにもC-c hを取られないようにする
;; (require 'helm)
(define-key global-map (kbd "C-c h") 'helm-mini)
(define-key global-map (kbd "C-x C-f") 'helm-find-files)
(define-key global-map (kbd "M-y")   'helm-show-kill-ring)
(define-key global-map (kbd "C-c i") 'helm-imenu)
(define-key global-map (kbd "C-c b") 'helm-buffer-list)
(define-key global-map (kbd "C-c k") 'helm-descbinds)
(define-key global-map (kbd "C-c s") 'helm-ag)
(define-key global-map (kbd "M-x")   'helm-M-x)
;;; 02-helm.el ends here
