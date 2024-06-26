(require 'package)
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")
                         ("org" . "http://orgmode.org/elpa/")))

;; No blinking cursor
(blink-cursor-mode 0)

;; No toolbar/menubar or scrollbar
;(menu-bar-mode -1)
(tool-bar-mode -1)

;; Show column numbers
(setq column-number-mode t)

;; Don't show start screen
(setq inhibit-startup-message t)

;; Follow symlinks
(setq vc-follow-symlinks t)

;; GnuPG
(require 'epa-file)
(epa-file-enable)
(setq epa-file-name-regexp "\\.\\(gpg\\|asc\\)$")
(epa-file-name-regexp-update)

;; Window title
(setq frame-title-format '("" "%b - %m"))

;; No tabs
(setq-default indent-tabs-mode nil)

;; Disable backup
(setq backup-inhibited t)

;; Disable auto save
(setq auto-save-default nil)

;; Cursor
(setq-default cursor-type 'hbar)

;; Consolas!
(setq default-frame-alist
      '((font . "Monaco-16:antialias=natural")
        (vertical-scroll-bars . nil)))

;; Enable IDO
(require 'ido)
(ido-mode t)

;; UTF-8
(set-language-environment "UTF-8")

;; Yep
(global-auto-revert-mode 1)

(global-display-line-numbers-mode)

(define-key global-map [end] 'move-end-of-line)
(define-key global-map [home] 'move-beginning-of-line)

;; Setup theme
(load-theme 'base16-atelier-heath t)

;; Frame size
(add-to-list 'default-frame-alist '(height . 40))
(add-to-list 'default-frame-alist '(width . 110))

;; Start server if needed
(load "server")
(unless (server-running-p) (server-start))

;; Org-mode for Python
(setq org-babel-python-command "python3")
(org-babel-do-load-languages
    'org-babel-load-languages '((python . t)))

;; Switch between implementation and header
(global-set-key (kbd "C-c o") 'ff-find-other-file)
