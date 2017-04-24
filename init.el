;; package.el 相關設定
(require 'package)

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/") t)

;; Elpy, the Emacs Lisp Python Environment
(add-to-list 'package-archives '("eply" . "https://jorgenschaefer.github.io/packages/"))

(package-initialize)
(when (not package-archive-contents)
  (package-refresh-contents))



;; Startup

;; Elpy python mode
(elpy-enable)
(elpy-use-ipython)
