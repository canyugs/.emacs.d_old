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

;; Key binding
(global-set-key (kbd "C-x g") 'magit-status)

;; ======================
;; Emacs 自動生成, 不要動
;; ======================

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (magit python py-autopep8 flycheck elpy))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
