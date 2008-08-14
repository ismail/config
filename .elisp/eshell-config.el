;; Change the default eshell prompt
(setq eshell-prompt-function
      (lambda ()
        (concat (getenv "USER") "@havana "
                (eshell/pwd) " $ ")))

;; This will transform ansi color to faces in Emacs shell!
(ansi-color-for-comint-mode-on)
(defun eshell-handle-ansi-color ()
  (ansi-color-apply-on-region eshell-last-output-start
                              eshell-last-output-end))
(add-hook 'eshell-mode-hook
          '(lambda ()
             (add-to-list
              'eshell-output-filter-functions
              'eshell-handle-ansi-color)))

(setq eshell-save-history-on-exit t)
