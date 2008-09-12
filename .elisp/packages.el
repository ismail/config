;; Enable w3m
(require 'w3m-load)

;; YA snippet
(require 'yasnippet)
(yas/initialize)
(yas/load-directory "~/.elisp/snippets")

;; Default content
(require 'defaultcontent)

;; Enable twitter integration
(require 'twit)
