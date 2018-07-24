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

;; Elpy python mode
;(elpy-enable)
;(elpy-use-ipython)

(require 'all-the-icons)


;; Key binding (Buffer)
(require 'ibuffer)
(global-set-key (kbd "C-x C-b") 'ibuffer)

;; Key binding (Windows)
(global-set-key (kbd "M-S") 'windmove-up)
(global-set-key (kbd "M-X") 'windmove-down)
(global-set-key (kbd "M-C") 'windmove-right)
(global-set-key (kbd "M-Z") 'windmove-left)

;; Key binding (Frame)
(global-set-key (kbd "<f11>") (lambda () (interactive) (other-frame 1)))
(global-set-key (kbd "<f12>") (lambda () (interactive) (other-frame -1)))

;; Key binding (magit)
(global-set-key (kbd "C-x g") 'magit-status)

;; Key binding (Org mode)
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cc" 'org-capture)
(global-set-key "\C-cb" 'org-iswitchb)

;; Key binding (NeoTree)
(global-set-key [f8] 'neotree-toggle)

;; Color-Theme
(require 'color-theme)
(eval-after-load "color-theme"
  '(progn
     (color-theme-initialize)
     ;; set default
     (color-theme-clarity)))

;; indent
(setq-default indent-tabs-mode nil)

;; c mode
(setq-default c-default-style "k&r"
              c-basic-offset 4)

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
 '(org-agenda-files nil)
 '(package-selected-packages
   (quote
    (python-mode python-pytest flycheck-pycheckers indent-info indent-tools flycheck-yamllint yaml-mode all-the-icons-dired neotree go-eldoc go-mode multi-term color-theme jedi magit python py-autopep8 flycheck elpy))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
