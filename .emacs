;; load path
(setq load-path (cons "~/.elisp" load-path))
(progn (cd "~/.elisp") (normal-top-level-add-subdirs-to-load-path))

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

;; Python
(load "ropy.el")

