;; Enable IDN support
(require 'idna)

;; Enable w3m
(load "w3m-config.el")

;; YA snippet
(require 'yasnippet)
(yas/initialize)
(yas/load-directory "~/.elisp/snippets")

;; Default content
(require 'defaultcontent)

;; Enable twitter integration
(require 'twit)
