(defvar astyle-command "astyle -n --indent=spaces=4 --brackets=linux --indent-labels --pad=oper --unpad=paren --one-line=keep-statements --convert-tabs --indent-preprocessor")

(defun astyle-region (start end)
   "Run astyle on region, formatting it in a pleasant way."
   (interactive "r")
   (save-excursion
     (shell-command-on-region start end astyle-command nil t)))

(defun astyle-buffer ()
   "Run astyle on whole buffer, formatting it in a pleasant way."
   (interactive)
   (save-excursion
     (astyle-region (point-min) (point-max))))

(add-hook 'c-mode-common-hook
             '(lambda ()
                (define-key c-mode-map "\C-cr"  'astyle-region)
                (define-key c-mode-map "\C-cb"  'astyle-buffer)
                (define-key c++-mode-map "\C-cr"  'astyle-region)
                (define-key c++-mode-map "\C-cb"  'astyle-buffer)))

