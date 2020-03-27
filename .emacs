(require 'package)
(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")
                         ("org" . "http://orgmode.org/elpa/")))

;; No blinking cursor
(blink-cursor-mode 0)

;; No toolbar/menubar or scrollbar
(menu-bar-mode -1)
(tool-bar-mode -1)

;; Show column numbers
(setq column-number-mode t)

;; Don't show start screen
(setq inhibit-startup-message t)

;; Follow symlinks
(setq vc-follow-symlinks t)

;; GnuPG
(require 'epa-file)
(epa-file-enable)
(setq epa-file-name-regexp "\\.\\(gpg\\|asc\\)$")
(epa-file-name-regexp-update)

;; Window title
(setq frame-title-format '("" "%b - %m"))

;; No tabs
(setq-default indent-tabs-mode nil)

;; Disable backup
(setq backup-inhibited t)

;; Disable auto save
(setq auto-save-default nil)

;; Cursor
(setq-default cursor-type 'hbar)

;; Consolas!
(setq default-frame-alist
      '((font . "Consolas-13:antialias=natural")
        (vertical-scroll-bars . nil)))

;; Enable IDO
(require 'ido)
(ido-mode t)

;; UTF-8
(set-language-environment "UTF-8")

;; Yep
(global-auto-revert-mode 1)

(global-display-line-numbers-mode)

;; Setup theme
(load-theme 'base16-atelier-heath t)

;; Frame size
(add-to-list 'default-frame-alist '(height . 40))
(add-to-list 'default-frame-alist '(width . 110))

;; Langtool
(defun langtool-autoshow-detail-popup (overlays)
  (when (require 'popup nil t)
    ;; Do not interrupt current popup
    (unless (or popup-instances
                ;; suppress popup after type `C-g` .
                (memq last-command '(keyboard-quit)))
      (let ((msg (langtool-details-error-message overlays)))
        (popup-tip msg)))))
(setq langtool-autoshow-message-function
      'langtool-autoshow-detail-popup)

(setq langtool-language-tool-jar "/havana/binaries/LanguageTool/languagetool-commandline.jar")
(setq langtool-language-tool-server-jar "/havana/binaries/LanguageTool/languagetool-server.jar")
(setq langtool-java-user-arguments '("-Dfile.encoding=UTF-8"))
(setq langtool-user-arguments '("--languagemodel=/havana/binaries/LanguageTool/data/ngram --word2vecmodel=/havana/binaries/LanguageTool/data/word2vec"))

(global-set-key "\C-x4w" 'langtool-check)
(global-set-key "\C-x4W" 'langtool-check-done)
(global-set-key "\C-x4l" 'langtool-switch-default-language)
(global-set-key "\C-x44" 'langtool-show-message-at-point)
(global-set-key "\C-x4c" 'langtool-correct-buffer)

(require 'langtool)

;; Start server if needed
(load "server")
(unless (server-running-p) (server-start))

;; Org-mode for Python
(setq org-babel-python-command "python3")
(org-babel-do-load-languages
    'org-babel-load-languages '((python . t)))

;; Switch between implementation and header
(global-set-key (kbd "C-c o") 'ff-find-other-file)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(delete-selection-mode nil)
 '(package-selected-packages
   '(password-store powershell csharp-mode langtool rust-mode cmake-mode clang-format fsharp-mode wandbox groovy-mode go-mode magit base16-theme)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
