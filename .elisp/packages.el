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


