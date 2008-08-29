;; Default font
(setq my-font "Droid Sans Mono-8.3")
(cond
    (macosx
        (setq my-font "Droid Sans Mono-14"))
    (win32
        (setq my-font "Droid Sans Mono-10")))

(set-frame-font my-font)
(add-hook 'after-make-frame-functions
        (lambda (cur-frame)
        (modify-frame-parameters cur-frame
        (list
        (cons 'font my-font)))))