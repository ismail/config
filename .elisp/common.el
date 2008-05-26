;; No backup files
(setq make-backup-files nil)

;; No ugly cursor blinking
(if (fboundp 'blink-cursor-mode) (blink-cursor-mode 0))

;; No tabs
(setq-default indent-tabs-mode nil)

;; No startup message
(setq inhibit-startup-message 1)

;; Alternative keys for execute comment
(global-set-key "\C-x\C-m" 'execute-extended-command)
(global-set-key "\C-c\C-m" 'execute-extended-command)

;; Shortcut for comment/uncomment
 (global-set-key "\C-u" 'comment-or-uncomment-region)

;; Default font
(if (string= "mac" window-system)
    (setq my-font "-apple-droid sans mono-medium-r-normal--15-0-72-72-m-0-iso10646-1")
    (setq my-font "Droid Sans Mono-11.3"))
(set-frame-font my-font)
(add-hook 'after-make-frame-functions
        (lambda (cur-frame)
        (modify-frame-parameters cur-frame
        (list
        (cons 'font my-font)))))

;; Lose the UI
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))

;; Remember cursor position
(require 'saveplace)
(setq-default save-place t)

;; One letter anwsers for yes/no questions
(fset 'yes-or-no-p 'y-or-n-p)

;; Save bookmarks
(setq bookmark-save-flag 1)

;; 3rd party modules
(require 'git-emacs)
(require 'twit)

;; Enable IDO mode
(ido-mode t)
(setq ido-enable-flex-matching t)

;; Use Firefox
(setq browse-url-generic-program (executable-find "firefox")
    browse-url-browser-function 'browse-url-generic)

;; Server Name
(setq server-name "ninbuntu")

