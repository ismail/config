;; Default font
(setq my-font "Anonymous-8.3")
(cond
    (macosx
        (setq my-font "Anonymous-15"))
    (win32
        (setq my-font "Anonymous-10")))

(set-frame-font my-font)
(add-hook 'after-make-frame-functions
        (lambda (cur-frame)
        (modify-frame-parameters cur-frame
        (list
        (cons 'font my-font)))))
