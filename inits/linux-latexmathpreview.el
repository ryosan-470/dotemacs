;; LaTeX Math Preview
;;; linux-latexmathpreview.el --- latex-math-preview for Linux distribution
;;; Commentary:
;;; Code:
(require 'latex-math-preview)
;; YaTeX-modeの状態で M-x latex-math-preview-*** としてプレビューを実行します
(autoload 'latex-math-preview-expression "latex-math-preview" nil t) ;; 画面でpngのプレビューをします
(autoload 'latex-math-preview-insert-symbol "latex-math-preview" nil t) ;; 挿入したいシンボルを画像で選択できます
(autoload 'latex-math-preview-save-image-file "latex-math-preview" nil t) ;; 数式だけを画像ファイルでエクスポートします
(autoload 'latex-math-preview-beamer-frame "latex-math-preview" nil t) ;; 式単位でプレビューをします
;; YaTeXする人向けのキーバインド
;; (YaTeX-define-key *** 'hoge) となっているものは C-c *** を表すはず…(？)。
;; 私の環境だとエラーは出ませんがlatex-math-previewがちゃんと起動してくれません…！
(add-hook 'yatex-mode-hook
         '(lambda ()
         (YaTeX-define-key "p" 'latex-math-preview-expression)
         (YaTeX-define-key "\C-p" 'latex-math-preview-save-image-file)
         (YaTeX-define-key "j" 'latex-math-preview-insert-symbol)
         (YaTeX-define-key "\C-j" 'latex-math-preview-last-symbol-again)
         (YaTeX-define-key "\C-b" 'latex-math-preview-beamer-frame)))
(setq latex-math-preview-in-math-mode-p-func 'YaTeX-in-math-mode-p)
;; latex, dvipng, dvipsのパスを設定します(私の環境ではこうなっていました)
(setq latex-math-preview-command-path-alist
      '( (latex . "/usr/bin/latex") (dvipng . "/usr/bin/dvipng") (dvips . "/usr/bin/dvips")) )
;; 日本語使う人はこの設定にするとよいらしいです
(setq latex-math-preview-tex-to-png-for-preview '(platex dvipng))
(setq latex-math-preview-tex-to-png-for-save '(platex dvipng))
(setq latex-math-preview-tex-to-eps-for-save '(platex dvips-to-eps))
(setq latex-math-preview-beamer-to-png '(platex dvipdfmx gs-to-png))
;;; linux-latexmathpreview.el ends here
