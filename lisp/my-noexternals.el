;; my-noexternals.el --- Different GNU Emacs preferences
;;
;; Author: Pablo Rodríguez Robles
;;
;; --------------------------------------------------------


;; EMACS' STARTUP CUSTOMIZATION
;; --------------------------------------

;; Remove scrollbars, menu bars, and toolbars
;; when is a special form of "if", with no else clause, it reads:
;; (when <condition> <code-to-execute-1> <code-to-execute2> ...)
(when (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(when (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(when (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; Supress the startup echo area message. This *must* be here (.emacs)
;; Please note that Emacs forces us to hardcode our login name here
(setq inhibit-startup-echo-area-message "USERNAME")
(setq inhibit-startup-message t)

;; Skip straight to the scratch buffer.
;; So turn off the scratch message while we're at it.
;; Since I end up using org-mode most of the time,
;; set the default mode accordingly.
(setq inhibit-splash-screen t
      initial-scratch-message nil
      initial-major-mode 'org-mode)

;; Display current line and column numbers
(setq line-number-mode  't)
(setq column-number-mode t)
(global-linum-mode t) ;; enable line numbers globally

;; Set default window size
;; [http://ergoemacs.org/emacs/emacs_customize_default_window_size.html]
;;
(setq initial-frame-alist
      '(
        (width . 85) ; character
        (height . 35) ; lines
        ))

;; The content of the scratch buffer when Emacs starts up
(setq initial-scratch-message
  ";; Hola Pablo, espero que todo vaya bien.\n\n\n")

;; Disable the visible-bell (annoying square)
;; [http://emacs.stackexchange.com/questions/20100/what-is-this-square-
;; in-the-middle-of-the-emacs-gui]
;;
(setq ring-bell-function 'ignore)

;; Typing then the mark is active will write over the marked region.
;; Make the common highlighting keystrokes work the way most people
;; expect them to.
;; Emacs also has it's own clipboard and doesn't respond to the system
;; clipboard by default, so tell Emacs that we're all friends and can get along.
(delete-selection-mode t)
(transient-mark-mode t)
(setq x-select-enable-clipboard t)

;; This will put empty line markers into the left hand side.
(setq-default indicate-empty-lines t)
(when (not indicate-empty-lines)
  (toggle-indicate-empty-lines))

;; Chage tabs for 4 pythonic spaces.
(setq tab-width 4
      indent-tabs-mode nil)


;; APPEARANCE PREFERENCES
;; --------------------------------------

;; Load solarized-light if in a graphical environment.
;; Load the wombat theme if in a terminal.
(if window-system
    (load-theme 'solarized-light t)
  (load-theme 'wombat t))

;; Set font size
;; [http://stackoverflow.com/questions/294664/how-to-set-
;; the-font-size-in-emacs]
;;
(set-face-attribute 'default nil :height 160)

;; TODO: Folder to the backup files

(provide 'my-noexternals)

;; my-noexternals.el ends here
