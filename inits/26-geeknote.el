;; 26-geeknote.el
;; using geeknote on Emacs
(defun geeknote-mode ()
  (interactive)
  (eshell-command "python ~/bin/geeknote/geeknote/geeknote.py settings --editor /usr/local/Cellar/emacs/24.3/bin/emacsclient")
  )
 
(defun geeknote-create (newnote)
  (interactive "sname: ")
  (eshell-command
   (format "python ~/bin/geeknote/geeknote/geeknote.py create --content WRITE --title %s" newnote))
  )
 
(defun geeknote-show (newnote)
  (interactive "sname: ")
  (eshell-command
   (format "python ~/bin/geeknote/geeknote/geeknote.py show %s" newnote))
  )
 
(defun geeknote-edit (newnote)
  (interactive "sname: ")
  (eshell-command
   (format "python ~/bin/geeknote/geeknote/geeknote.py edit --note %s" newnote))
  )
 
(defun geeknote-remove (newnote)
  (interactive "sname: ")
  (eshell-command
   (format "python ~/bin/geeknote/geeknote/geeknote.py remove --note %s" newnote))
  )
 
(defun geeknote-find (keyword)
  (interactive "skeyword: ")
  (eshell-command
   (format "python ~/bin/geeknote/geeknote/geeknote.py find --search %s" keyword))
  )
