(require 'w3m-load)

(defadvice w3m-url-transfer-encode-string
  (around encode-idna (url &optional coding))
  (let* ((host (w3m-http-url-host
                (w3m-parse-http-url (w3m-canonicalize-url url))))
         (url (replace-regexp-in-string host (idna-to-ascii host) url)))
    ad-do-it))

(ad-activate 'w3m-url-transfer-encode-string)

