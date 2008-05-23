;; Enable Python mode
(autoload 'python "python-mode" "Python editing mode." t)

;; Load ropemacs
(require 'pymacs)
(pymacs-load "ropemacs" "rope-")
(setq ropemacs-enable-autoimport 't)

;; Use Ctrl-A for code completion
(global-set-key "\C-a" 'rope-code-assist)
