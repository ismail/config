(package-initialize)
(require 'package)
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")
                         ("org" . "http://orgmode.org/elpa/")))

;; No blinking cursor
(blink-cursor-mode 0)

;; No toolbar or menubar
(menu-bar-mode -1)
(tool-bar-mode -1)

;; Don't show start screen
(setq inhibit-startup-message t)

;; No scrollbars
(scroll-bar-mode -1)

;; Window title
(setq frame-title-format '("" "%f"))

;; No tabs
(setq-default indent-tabs-mode nil)

;; Disable backup
(setq backup-inhibited t)

;; Disable auto save
(setq auto-save-default nil)

;; Consolas!
(set-default-font "Consolas 13")

;; Enable IDO
(require 'ido)
(ido-mode t)

;; UTF-8
(set-language-environment "UTF-8")

;; Setup theme
(when (display-graphic-p)
        (require 'base16-atelier-heath-theme)
        (menu-bar-mode 1))

(server-start)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(delete-selection-mode nil)
 '(package-selected-packages (quote (org-plus-contrib magit base16-theme))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
