;; No backup files
(setq make-backup-files nil)

;; No ugly cursor blinking
(if (fboundp 'blink-cursor-mode) (blink-cursor-mode 0))

;; No tabs
(setq-default indent-tabs-mode nil)

;; No startup message
(setq inhibit-startup-message 1)

;; Die trailing whitespace die
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Compilation should scroll
(setq compilation-scroll-output t)

;; Alternative keys for execute command
(global-set-key "\C-x\C-m" 'execute-extended-command)
(global-set-key "\C-c\C-m" 'execute-extended-command)

;; Shortcut for comment/uncomment
(global-set-key "\C-u" 'comment-or-uncomment-region)

;; Enable w3m
(require 'w3m-load)

;; YA snippet
(require 'yasnippet-bundle)

;; Default font
(if (string= "ns" window-system)
    (setq my-font "Droid Sans Mono-14")
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

(if (not (string= "ns" window-system))
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

;; 3rd party modules
(require 'twit)

;; Enable IDO mode
(ido-mode t)
(setq ido-enable-flex-matching t)

;; Use Firefox on X and Safari on MacOS
(if (string= "x" window-system)
    (progn
      (setq browse-url-generic-program (executable-find "firefox")
            browse-url-browser-function 'browse-url-generic)))

(if (string= "ns" window-system)
  (progn
    (setq browse-url-browser-function 'browse-url-safari)
    (defun browse-url-safari (url &optional new-window)
      "Open URL in a new Safari window."
      (interactive (browse-url-interactive-arg "URL: "))
      (unless
          (string= ""
                   (shell-command-to-string
                    (concat "open -a WebKit " url)))
        (message "Starting Safari...")
        (start-process (concat "open -a WebKit " url) nil "open -a WebKit " url)
        (message "Starting Safari... done")))))

;; Server start if we are not in a windowing environment
(if (string= nil window-system)
    (server-start))
