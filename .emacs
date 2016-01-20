;; General configuration
(blink-cursor-mode 0)
(menu-bar-mode -1)
(tool-bar-mode -1)
(setq inhibit-startup-message t)
(when window-system (set-frame-size (selected-frame) 127 50))
(add-hook 'find-file-hook (lambda () (linum-mode 1)))
(setq linum-format "%4d \u2502 ")
