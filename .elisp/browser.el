;; Use Firefox on X and Safari on MacOS
(if x11
    (progn
      (setq browse-url-generic-program (executable-find "firefox")
            browse-url-browser-function 'browse-url-generic)))

(if macosx
  (progn
    (setq browse-url-browser-function 'browse-url-safari)
    (defun browse-url-safari (url &optional new-window)
      "Open URL in a new Safari window."
      (interactive (browse-url-interactive-arg "URL: "))
      (unless
          (string= ""
                   (shell-command-to-string
                    (concat "open -a WebKit " url)))
        (message "Starting Safari...")
        (start-process (concat "open -a WebKit " url) nil "open -a WebKit " url)
        (message "Starting Safari... done")))))
