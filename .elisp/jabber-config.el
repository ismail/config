(require 'jabber)
(setq jabber-account-list
      (quote (("ismail@namtrac.org/emacs"
               (:network-server . "talk.google.com")
               (:password . nil)
               (:port . 5223)
               (:connection-type . ssl)))))
(setq jabber-mode-line-mode t)
(setq fsm-debug nil)


