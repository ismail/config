;; load path
(setq load-path (cons "~/.elisp" load-path))
(progn (cd "~/.elisp") (normal-top-level-add-subdirs-to-load-path))

;; Platform discovery
(load "platforms.el")

;; Erc config
(load "erc-config.el")

;; Astyle
(load "astyle.el")

;; Custom file
(setq custom-file "~/.elisp/custom.el")
(load "custom.el")

;; Common config options
(load "common.el")

;; Nmxl config
(load "nxml-config.el")

;; Eshell
(load "eshell-config.el")

;; Org mode
(load "orgmode.el")

;; ECB
(load "ecb-config.el")

;; Jabber
(load "jabber-config.el")

;; Paths
(load "path.el")

;; Fonts
(load "fonts.el")

;; Browser config
(load "browser.el")

;; Load packages
(load "packages.el")

;; Emacs reloaded
(defconst animate-n-steps 20)
(defun emacs-reloaded ()
(animate-string (concat ";; Initialization successful, welcome to "
    (substring (emacs-version) 0 16)
    ".")
    0 0)
(newline-and-indent)  (newline-and-indent))
(add-hook 'after-init-hook 'emacs-reloaded)
