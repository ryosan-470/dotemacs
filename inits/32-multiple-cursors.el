;;; 32-multiple-cursors.el --- Multiple cursors for Emacs
;;; Commentary:
;;; https://github.com/magnars/multiple-cursors.el
;;; Code:
;; (require 'multiple-cursors)
(define-key global-map (kbd "C-c .") 'mc/mark-next-like-this)
(define-key global-map (kbd "C-c ,") 'mc/mark-previous-lines)
(define-key global-map (kbd "C-c :") 'mc/mark-all-like-this)
(define-key global-map (kbd "C-c .") 'mc/edit-lines)
;;; 32-multiple-cursors.el ends here
