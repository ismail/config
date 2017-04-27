(package-initialize)
(require 'package)
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")
                         ("org" . "http://orgmode.org/elpa/")))

;; No blinking cursor
(blink-cursor-mode 0)

;; No menubar or toolbar
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

;; Setup theme
(when (display-graphic-p)
    (require 'base16-atelier-heath-theme))

(server-start)
