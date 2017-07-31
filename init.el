;; package.el 相關設定
(require 'package)

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/") t)

;; Elpy, the Emacs Lisp Python Environment
(add-to-list 'package-archives '("eply" . "https://jorgenschaefer.github.io/packages/"))

;; Jedi, Jedi.el is a Python auto-completion package for Emacs
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:complete-on-dot t)                 ; optional

(package-initialize)
(when (not package-archive-contents)
  (package-refresh-contents))



;; Startup

;; Elpy python mode
(elpy-enable)
(elpy-use-ipython)

;; Key binding
(global-set-key (kbd "C-x g") 'magit-status)

;; Theme
(require 'color-theme)
(color-theme-initialize)

(load "color-theme-solarized")


;; ======================
;; Emacs 自動生成, 不要動
;; ======================

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("8db4b03b9ae654d4a57804286eb3e332725c84d7cdab38463cb6b97d5762ad26" default)))
 '(package-selected-packages
   (quote
    (color-theme color-theme-solarized groovy-imports groovy-mode jedi magit python py-autopep8 flycheck elpy))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
