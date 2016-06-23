;; my-ui.el --- GNU Emacs user interface preferences
;;
;; Author: Pablo Rodríguez Robles
;;
;; --------------------------------------------------------


;; Remove scrollbars, menu bars, and toolbars
;; when is a special form of "if", with no else clause, it reads:
;; (when <condition> <code-to-execute-1> <code-to-execute2> ...)
(when (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(when (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(when (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; Disable startup screen.
(setq inhibit-startup-screen t)

;; Skip straight to the scratch buffer.
;; So turn off the scratch message while we're at it.
;; Since I end up using org-mode most of the time,
;; set the default mode accordingly.
(setq inhibit-splash-screen t
      initial-scratch-message nil
      initial-major-mode 'org-mode)

;; The blinking cursor is nothing, but an annoyance.
(blink-cursor-mode -1)

;; Display current line and column numbers
(line-number-mode t)
(column-number-mode t)
(size-indication-mode t)

;; Line numbers.
;; [https://www.emacswiki.org/emacs/LineNumbers]
;;
(global-linum-mode t)

;; More useful frame title, that show either a file or a
;; buffer name (if the buffer isn't visiting a file).
(setq frame-title-format
      '("" invocation-name " --- " (:eval (if (buffer-file-name)
                                            (abbreviate-file-name (buffer-file-name))
                                          "%b"))))

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

;; New lines without RET.
(setq next-line-add-newlines t)

(provide 'my-ui)

;; my-ui.el ends here
