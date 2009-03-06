;; Default content
(require 'defaultcontent)

;; Enable twitter integration
(require 'twit)

;; Python completion
(load "py-completion.el")

;; C-a/C-b for open line above/below respectively
(load "open-line.el")

;; Dired config
(load "dired-conf.el")

;; C# support
(autoload 'csharp-mode "csharp-mode" "Major mode for editing C# code." t)
(setq auto-mode-alist (cons '("\\.cs$" . csharp-mode) auto-mode-alist))

;; Python completion
(load "py-completion.el")

;; GIT emacs
(require 'git)

;; IPython
(setq ipython-command "/usr/bin/ipython")
(require 'ipython)

