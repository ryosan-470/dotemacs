;;; 03-powerline.el --- Emacs for Powerline
;;; Commentary:
;;; Code:
(line-number-mode t)   ;;; 行番号表示
(column-number-mode t) ;;; 列番号表示
(setq-default mode-line-format '(
  (:propertize " %b "           face mode-line-1-fg)   ;; buffer
  (:propertize "⮀"              face mode-line-1-bg)
  (:propertize " %m "           face mode-line-2-fg)   ;; lang
  (:propertize "⮀"              face mode-line-2-bg)
  (:propertize minor-mode-alist face mode-line-3-fg)   ;; mode
  (:propertize "⮀"              face mode-line-3-bg)
  (:propertize " %Z "           face mode-line-4-fg)   ;; Encoding
  (:propertize "⮀"              face mode-line-4-bg)
  (:propertize " ⭡ "            face mode-line-5-fg)
  (:propertize "%l"             face mode-line-6-fg)   ;; Line
  (:propertize ":%c"            face mode-line-5-fg))) ;; column

;;--------------------------------------------------------------------------------
;; モードラインの色
;;--------------------------------------------------------------------------------
(set-face-attribute 'mode-line-inactive nil
  :foreground "#005f5f" :background "#87d7ff" :box nil)
;; fg-color:文字色, bg-color:背景色
(defun make/set-face (face-name fg-color bg-color weight)
  (make-face face-name)
  (set-face-attribute face-name nil
    :foreground fg-color :background bg-color :box nil :weight weight))
(make/set-face 'mode-line-1-fg "White"    "Blue"     'bold)
(make/set-face 'mode-line-1-bg "Blue"     "DeepPink" 'bold)
(make/set-face 'mode-line-2-fg "White"    "DeepPink" 'normal)
(make/set-face 'mode-line-2-bg "Red"      "Green"    'normal)
(make/set-face 'mode-line-3-fg "White"    "Green"    'normal) ;; lang
(make/set-face 'mode-line-3-bg "Green"    "#ff1493"  'normal)
(make/set-face 'mode-line-4-fg "White"    "#ff1493"  'bold)
(make/set-face 'mode-line-4-bg "#ffd770"  "#87d7ff"  'normal)
(make/set-face 'mode-line-5-fg "#005f5f"  "#87d7ff"  'normal)
(make/set-face 'mode-line-5-bg "#0087af"  "#87d7ff"  'normal)
(make/set-face 'mode-line-6-fg "#005f5f"  "#87d7ff"  'bold)
;;; 03-powerline.el ends here
