;; Default font
(setq my-font "Droid Sans Mono-11.3")
(cond
    (macosx
        (setq my-font "Monaco-15"))
    (win32
        (setq my-font "Consolas-12")))

(set-frame-font my-font)
(add-hook 'after-make-frame-functions
        (lambda (cur-frame)
        (modify-frame-parameters cur-frame
        (list
        (cons 'font my-font)))))
