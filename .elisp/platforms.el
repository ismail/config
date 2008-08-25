(defconst win32
    (eq system-type 'windows-nt))

(defconst linux
    (or (eq system-type 'gnu/linux)
        (eq system-type 'linux)))

(defconst x11
    (and window-system linux))

(defconst macosx
    (eq system-type 'darwin))
