;; YA snippet
(require 'yasnippet)
(yas/initialize)
(yas/load-directory "~/.elisp/snippets")

;; Default content
(require 'defaultcontent)

;; Enable twitter integration
(require 'twit)

;; Pysmell
(require 'pysmell)
(add-hook 'python-mode-hook (lambda () (pysmell-mode 1)))

;; C-a/C-b for open line above/below respectively
(load "open-line.el")

;; Dired config
(load "dired-conf.el")

;; C# support
(autoload 'csharp-mode "csharp-mode" "Major mode for editing C# code." t)
(setq auto-mode-alist (cons '("\\.cs$" . csharp-mode) auto-mode-alist))

;; Python mode
(setq auto-mode-alist (cons '("\\.py$" . python-mode) auto-mode-alist))
(setq interpreter-mode-alist (cons '("python" . python-mode)
                                       interpreter-mode-alist))
(autoload 'python-mode "python-mode" "Python editing mode." t)

;; GIT emacs
(require 'git)


;; IPython
(setq ipython-command "/usr/bin/ipython")
(require 'ipython)

