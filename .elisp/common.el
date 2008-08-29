;; No backup files
(setq make-backup-files nil)

;; No ugly cursor blinking
(if (fboundp 'blink-cursor-mode) (blink-cursor-mode 0))

;; No tabs
(setq-default indent-tabs-mode nil)

;; No startup message
(setq inhibit-startup-message 1)

;; No beeping
(setq ring-bell-function (lambda () (message "*beep*")))

;; Die trailing whitespace die
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Compilation should scroll
(setq compilation-scroll-output t)

;; Alternative keys for execute command
(global-set-key "\C-x\C-m" 'execute-extended-command)
(global-set-key "\C-c\C-m" 'execute-extended-command)

;; Shortcut for comment/uncomment
(global-set-key "\C-u" 'comment-or-uncomment-region)

;; Use UTF-8 everywhere
(prefer-coding-system 'utf-8)

;; Lose the UI
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))

(if (not macosx)
    (if (fboundp 'menu-bar-mode) (menu-bar-mode -1)))

;; For multi-tty mode
(add-hook 'after-make-frame-functions
          (lambda (frame)
            (select-frame frame)
            (if window-system
                (tool-bar-mode -1))))

;; Remember cursor position
(require 'saveplace)
(setq-default save-place t)

;; One letter anwsers for yes/no questions
(fset 'yes-or-no-p 'y-or-n-p)

;; Save bookmarks
(setq bookmark-save-flag 1)

;; Enable IDO mode
(ido-mode t)
(setq ido-enable-flex-matching t)

;; Include current buffer name in the title bar
(setq frame-title-format '(buffer-file-name "%f" ("%b")))

