(let* ((cygwin-root "c:/cygwin")
       (cygwin-bin (concat cygwin-root "/bin")))
  (setenv "PATH" (concat cygwin-bin ";" (getenv "PATH")))
  (setq exec-path (cons cygwin-bin exec-path)))

(setq shell-file-name "zsh")
(setq explicit-shell-file-name "zsh")
