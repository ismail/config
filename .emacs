(package-initialize)

;; Install packages if necessary
(require 'cl)

(defvar my-packages
  '(clang-format solarized-theme)
  "A list of packages to ensure are installed at launch.")

(defun my-packages-installed-p ()
  (loop for p in my-packages
        when (not (package-installed-p p)) do (return nil)
        finally (return t)))

(unless (my-packages-installed-p)
  ;; check for new packages (package versions)
  (package-refresh-contents)
  ;; install the missing packages
  (dolist (p my-packages)
    (when (not (package-installed-p p))
      (package-install p))))

;; No blinking cursor
(blink-cursor-mode 0)

;; No menubar or toolbar
(menu-bar-mode -1)
(tool-bar-mode -1)

;; Don't show start screen
(setq inhibit-startup-message t)

;; No scrollbars
(scroll-bar-mode -1)

;; Window title
(setq frame-title-format '("" "%f"))

;; No tabs
(setq-default indent-tabs-mode nil)

;; Consolas!
(set-default-font "Consolas 11")

;; Setup solarized theme
(load-theme 'solarized-dark t)
(setq solarized-distinct-fringe-background t)
(setq solarized-high-contrast-mode-line t)
(setq solarized-use-less-bold t)

(require 'clang-format)
