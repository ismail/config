;;; -*-emacs-lisp-*-

(defvar generated-autoload-file)
(defvar command-line-args-left)
(defun generate-autoloads ()
  (interactive)
  (require 'autoload)
  (setq generated-autoload-file (car command-line-args-left))
  (setq command-line-args-left (cdr command-line-args-left))
  (batch-update-autoloads))

(provide 'emms-auto)
;;; Generated autoloads follow (made by autoload.el).

;;;### (autoloads (emms-lyrics-toggle emms-lyrics-disable emms-lyrics-enable)
;;;;;;  "emms-lyrics" "../../../.elisp/emms-lukhas/emms-lyrics.el"
;;;;;;  (18430 52049))
;;; Generated autoloads from ../../../.elisp/emms-lukhas/emms-lyrics.el

(autoload 'emms-lyrics-enable "emms-lyrics" "\
Enable displaying emms lyrics.

\(fn)" t nil)

(autoload 'emms-lyrics-disable "emms-lyrics" "\
Disable displaying emms lyrics.

\(fn)" t nil)

(autoload 'emms-lyrics-toggle "emms-lyrics" "\
Toggle displaying emms lyrics.

\(fn)" t nil)

;;;***

;;;### (autoloads (emms-mode-line-toggle emms-mode-line-disable emms-mode-line-enable)
;;;;;;  "emms-mode-line" "../../../.elisp/emms-lukhas/emms-mode-line.el"
;;;;;;  (18357 1380))
;;; Generated autoloads from ../../../.elisp/emms-lukhas/emms-mode-line.el

(autoload 'emms-mode-line-enable "emms-mode-line" "\
Turn on `emms-mode-line'.

\(fn)" t nil)

(autoload 'emms-mode-line-disable "emms-mode-line" "\
Turn off `emms-mode-line'.

\(fn)" t nil)

(autoload 'emms-mode-line-toggle "emms-mode-line" "\
Toggle `emms-mode-line'.

\(fn)" t nil)

;;;***

;;;### (autoloads (emms-player-mpd-show emms-player-mpd-connect emms-player-mpd-clear)
;;;;;;  "emms-player-mpd" "../../../.elisp/emms-lukhas/emms-player-mpd.el"
;;;;;;  (18360 63971))
;;; Generated autoloads from ../../../.elisp/emms-lukhas/emms-player-mpd.el

(autoload 'emms-player-mpd-clear "emms-player-mpd" "\
Clear the MusicPD playlist.

\(fn)" t nil)

(autoload 'emms-player-mpd-connect "emms-player-mpd" "\
Connect to MusicPD and retrieve its current playlist.

Afterward, the status of MusicPD will be tracked.

This also has the effect of changing the current EMMS playlist to
be the same as the current MusicPD playlist.  Thus, this
function is useful to call if the contents of the EMMS playlist
buffer get out-of-sync for some reason.

\(fn)" t nil)

(autoload 'emms-player-mpd-show "emms-player-mpd" "\
Describe the current EMMS track in the minibuffer.

If INSERTP is non-nil, insert the description into the current
buffer instead.

If CALLBACK is a function, call it with the current buffer and
description as arguments instead of displaying the description or
inserting it.

This function uses `emms-show-format' to format the current track.
It differs from `emms-show' in that it asks MusicPD for the current track,
rather than EMMS.

\(fn &optional INSERTP CALLBACK)" t nil)

;;;***

;;;### (autoloads (emms-playing-time-disable-display emms-playing-time-enable-display)
;;;;;;  "emms-playing-time" "../../../.elisp/emms-lukhas/emms-playing-time.el"
;;;;;;  (18253 48174))
;;; Generated autoloads from ../../../.elisp/emms-lukhas/emms-playing-time.el

(autoload 'emms-playing-time-enable-display "emms-playing-time" "\
Display playing time on mode line.

\(fn)" t nil)

(autoload 'emms-playing-time-disable-display "emms-playing-time" "\
Remove playing time from mode line.

\(fn)" t nil)

;;;***

;;;### (autoloads (emms-playlist-limit-toggle emms-playlist-limit-disable
;;;;;;  emms-playlist-limit-enable) "emms-playlist-limit" "../../../.elisp/emms-lukhas/emms-playlist-limit.el"
;;;;;;  (18296 24672))
;;; Generated autoloads from ../../../.elisp/emms-lukhas/emms-playlist-limit.el

(autoload 'emms-playlist-limit-enable "emms-playlist-limit" "\
Turn on emms playlist limit.

\(fn)" t nil)

(autoload 'emms-playlist-limit-disable "emms-playlist-limit" "\
Turn off emms playlist limit.

\(fn)" t nil)

(autoload 'emms-playlist-limit-toggle "emms-playlist-limit" "\
Toggle emms playlist limit.

\(fn)" t nil)

;;;***

;;;### (autoloads (emms-playlist-mode) "emms-playlist-mode" "../../../.elisp/emms-lukhas/emms-playlist-mode.el"
;;;;;;  (18440 1489))
;;; Generated autoloads from ../../../.elisp/emms-lukhas/emms-playlist-mode.el

(autoload 'emms-playlist-mode "emms-playlist-mode" "\
A major mode for Emms playlists.
\\{emms-playlist-mode-map}

\(fn)" t nil)

;;;***

;;;### (autoloads (emms-score-toggle emms-score-disable emms-score-enable)
;;;;;;  "emms-score" "../../../.elisp/emms-lukhas/emms-score.el"
;;;;;;  (18253 48174))
;;; Generated autoloads from ../../../.elisp/emms-lukhas/emms-score.el

(autoload 'emms-score-enable "emms-score" "\
Turn on emms-score.

\(fn)" t nil)

(autoload 'emms-score-disable "emms-score" "\
Turn off emms-score.

\(fn)" t nil)

(autoload 'emms-score-toggle "emms-score" "\
Toggle emms-score.

\(fn)" t nil)

;;;***

;;;### (autoloads (emms-default-players emms-devel emms-all emms-standard
;;;;;;  emms-minimalistic) "emms-setup" "../../../.elisp/emms-lukhas/emms-setup.el"
;;;;;;  (18296 24672))
;;; Generated autoloads from ../../../.elisp/emms-lukhas/emms-setup.el

(autoload 'emms-minimalistic "emms-setup" "\
An Emms setup script.
Invisible playlists and all the basics for playing media.

\(fn)" nil nil)

(autoload 'emms-standard "emms-setup" "\
An Emms setup script.
Everything included in the `emms-minimalistic' setup, the Emms
interactive playlist mode, reading information from tagged
audio files, and a metadata cache.

\(fn)" nil nil)

(autoload 'emms-all "emms-setup" "\
An Emms setup script.
Everything included in the `emms-standard' setup and adds all the
stable features which come with the Emms distribution.

\(fn)" nil nil)

(autoload 'emms-devel "emms-setup" "\
An Emms setup script.
Everything included in the `emms-all' setup and adds all the
features which come with the Emms distribution regardless of if
they are considered stable or not.  Use this if you like living
on the edge.

\(fn)" nil nil)

(autoload 'emms-default-players "emms-setup" "\
Set `emms-player-list' to `emms-setup-default-player-list'.

\(fn)" nil nil)

;;;***

;;;### (autoloads (emms-locate emms-source-file-regex emms-source-file-directory-tree)
;;;;;;  "emms-source-file" "../../../.elisp/emms-lukhas/emms-source-file.el"
;;;;;;  (18253 48174))
;;; Generated autoloads from ../../../.elisp/emms-lukhas/emms-source-file.el
 (autoload 'emms-play-file "emms-source-file" nil t)
 (autoload 'emms-add-file "emms-source-file" nil t)
 (autoload 'emms-play-directory "emms-source-file" nil t)
 (autoload 'emms-add-directory "emms-source-file" nil t)
 (autoload 'emms-play-directory-tree "emms-source-file" nil t)
 (autoload 'emms-add-directory-tree "emms-source-file" nil t)
 (autoload 'emms-play-find "emms-source-file" nil t)
 (autoload 'emms-add-find "emms-source-file" nil t)
 (autoload 'emms-play-dired "emms-source-file" nil t)
 (autoload 'emms-add-dired "emms-source-file" nil t)

(autoload 'emms-source-file-directory-tree "emms-source-file" "\
Return a list of all files under DIR that match REGEX.
This function uses `emms-source-file-directory-tree-function'.

\(fn DIR REGEX)" nil nil)

(autoload 'emms-source-file-regex "emms-source-file" "\
Return a regexp that matches everything any player (that supports
files) can play.

\(fn)" nil nil)

(autoload 'emms-locate "emms-source-file" "\
Search for REGEXP and display the results in a locate buffer

\(fn REGEXP)" t nil)
 (autoload 'emms-play-url "emms-source-file" nil t)
 (autoload 'emms-add-url "emms-source-file" nil t)
 (autoload 'emms-play-streamlist "emms-source-file" nil t)
 (autoload 'emms-add-streamlist "emms-source-file" nil t)
 (autoload 'emms-play-lastfm "emms-lastfm" nil t)
 (autoload 'emms-add-lastfm "emms-lastfm" nil t)

;;;***

;;;### (autoloads nil "emms-source-playlist" "../../../.elisp/emms-lukhas/emms-source-playlist.el"
;;;;;;  (18253 48174))
;;; Generated autoloads from ../../../.elisp/emms-lukhas/emms-source-playlist.el
 (autoload 'emms-play-playlist "emms-source-playlist" nil t)
 (autoload 'emms-add-playlist "emms-source-playlist" nil t)
 (autoload 'emms-play-native-playlist "emms-source-playlist" nil t)
 (autoload 'emms-add-native-playlist "emms-source-playlist" nil t)
 (autoload 'emms-play-m3u-playlist "emms-source-playlist" nil t)
 (autoload 'emms-add-m3u-playlist "emms-source-playlist" nil t)
 (autoload 'emms-play-pls-playlist "emms-source-playlist" nil t)
 (autoload 'emms-add-pls-playlist "emms-source-playlist" nil t)
 (autoload 'emms-play-playlist-file "emms-source-playlist" nil t)
 (autoload 'emms-add-playlist-file "emms-source-playlist" nil t)
 (autoload 'emms-play-playlist-directory
          "emms-source-playlist" nil t)
 (autoload 'emms-add-playlist-directory
          "emms-source-playlist" nil t)
 (autoload 'emms-play-playlist-directory-tree
          "emms-source-playlist" nil t)
 (autoload 'emms-add-playlist-directory-tree
          "emms-source-file" nil t)

;;;***

;;;### (autoloads (emms-streams) "emms-streams" "../../../.elisp/emms-lukhas/emms-streams.el"
;;;;;;  (18253 48174))
;;; Generated autoloads from ../../../.elisp/emms-lukhas/emms-streams.el

(autoload 'emms-streams "emms-streams" "\
Opens the EMMS Streams interface.

\(fn)" t nil)

;;;***

;;;### (autoloads (emms-volume-mode-minus emms-volume-mode-plus emms-volume-lower
;;;;;;  emms-volume-raise) "emms-volume" "../../../.elisp/emms-lukhas/emms-volume.el"
;;;;;;  (18253 48174))
;;; Generated autoloads from ../../../.elisp/emms-lukhas/emms-volume.el

(autoload 'emms-volume-raise "emms-volume" "\
Raise the speaker volume.

\(fn)" t nil)

(autoload 'emms-volume-lower "emms-volume" "\
Lower the speaker volume.

\(fn)" t nil)

(autoload 'emms-volume-mode-plus "emms-volume" "\
Raise volume and enable or extend the `emms-volume-minor-mode' timeout.

\(fn)" t nil)

(autoload 'emms-volume-mode-minus "emms-volume" "\
Lower volume and enable or extend the `emms-volume-minor-mode' timeout.

\(fn)" t nil)

;;;***

;;;### (autoloads (emms-volume-amixer-change) "emms-volume-amixer"
;;;;;;  "../../../.elisp/emms-lukhas/emms-volume-amixer.el" (18253
;;;;;;  48174))
;;; Generated autoloads from ../../../.elisp/emms-lukhas/emms-volume-amixer.el

(autoload 'emms-volume-amixer-change "emms-volume-amixer" "\
Change amixer master volume by AMOUNT.

\(fn AMOUNT)" nil nil)

;;;***

;;;### (autoloads (oggc-show-header) "ogg-comment" "../../../.elisp/emms-lukhas/ogg-comment.el"
;;;;;;  (18253 48174))
;;; Generated autoloads from ../../../.elisp/emms-lukhas/ogg-comment.el

(autoload 'oggc-show-header "ogg-comment" "\
Show a pretty printed representation of the Ogg Comments in FILE.

\(fn FILE)" t nil)

;;;***

;;;### (autoloads (tq-create) "tq" "../../../.elisp/emms-lukhas/tq.el"
;;;;;;  (18253 48174))
;;; Generated autoloads from ../../../.elisp/emms-lukhas/tq.el

(autoload 'tq-create "tq" "\
Create and return a transaction queue communicating with PROCESS.
PROCESS should be a subprocess capable of sending and receiving
streams of bytes.  It may be a local process, or it may be connected
to a tcp server on another machine.

\(fn PROCESS)" nil nil)

;;;***

;;;### (autoloads nil nil ("../../../.elisp/emms-lukhas/emms-auto.el"
;;;;;;  "../../../.elisp/emms-lukhas/emms-bookmarks.el" "../../../.elisp/emms-lukhas/emms-browser.el"
;;;;;;  "../../../.elisp/emms-lukhas/emms-compat.el" "../../../.elisp/emms-lukhas/emms-history.el"
;;;;;;  "../../../.elisp/emms-lukhas/emms-i18n.el" "../../../.elisp/emms-lukhas/emms-info-libtag.el"
;;;;;;  "../../../.elisp/emms-lukhas/emms-info-metaflac.el" "../../../.elisp/emms-lukhas/emms-info-mp3info.el"
;;;;;;  "../../../.elisp/emms-lukhas/emms-info-ogg.el" "../../../.elisp/emms-lukhas/emms-info-ogginfo.el"
;;;;;;  "../../../.elisp/emms-lukhas/emms-info.el" "../../../.elisp/emms-lukhas/emms-last-played.el"
;;;;;;  "../../../.elisp/emms-lukhas/emms-lastfm.el" "../../../.elisp/emms-lukhas/emms-maint.el"
;;;;;;  "../../../.elisp/emms-lukhas/emms-mark.el" "../../../.elisp/emms-lukhas/emms-metaplaylist-mode.el"
;;;;;;  "../../../.elisp/emms-lukhas/emms-mode-line-icon.el" "../../../.elisp/emms-lukhas/emms-player-mpg321-remote.el"
;;;;;;  "../../../.elisp/emms-lukhas/emms-player-mplayer.el" "../../../.elisp/emms-lukhas/emms-player-simple.el"
;;;;;;  "../../../.elisp/emms-lukhas/emms-player-xine.el" "../../../.elisp/emms-lukhas/emms-playlist-sort.el"
;;;;;;  "../../../.elisp/emms-lukhas/emms-stream-info.el" "../../../.elisp/emms-lukhas/emms-tag-editor.el"
;;;;;;  "../../../.elisp/emms-lukhas/emms-url.el" "../../../.elisp/emms-lukhas/emms.el"
;;;;;;  "../../../.elisp/emms-lukhas/jack.el" "../../../.elisp/emms-lukhas/later-do.el")
;;;;;;  (18490 19680 66620))

;;;***

;;;### (autoloads (emms-cache-toggle emms-cache-disable emms-cache-enable)
;;;;;;  "emms-cache" "../../../.elisp/emms-lukhas/emms-cache.el"
;;;;;;  (18253 48174))
;;; Generated autoloads from ../../../.elisp/emms-lukhas/emms-cache.el

(autoload 'emms-cache-enable "emms-cache" "\
Enable caching of Emms track data.

\(fn)" t nil)

(autoload 'emms-cache-disable "emms-cache" "\
Disable caching of Emms track data.

\(fn)" t nil)

(autoload 'emms-cache-toggle "emms-cache" "\
Toggle caching of Emms track data.

\(fn)" t nil)

;;;***
