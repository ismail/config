(add-to-list 'load-path "~/.elisp/emms")
(setq emms-score-file "~/.emacs.d/score")
(setq emms-stream-bookmarks-file "~/.emacs.d/streams")
(setq emms-history-file "~/.emacs.d/emms-history")
(setq emms-cache-file "~/.emacs.d/emms-cache")

(require 'emms-setup)
(require 'emms-player-simple)
(require 'emms-source-file)
(require 'emms-source-playlist)
(require 'emms-streams)
(require 'emms-info)
(emms-devel)
(setq emms-player-list (list 'emms-player-mplayer))

(setq emms-lastfm-username "cartmantr"
      emms-lastfm-password "linux-Ist-1453")
(emms-lastfm-enable)
(require 'emms-mode-line)
(emms-mode-line 1)
(require 'emms-playing-time)
(emms-playing-time 1)
(setq emms-stream-default-action "play")

