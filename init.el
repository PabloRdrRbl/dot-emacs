;; init.el --- GNU Emacs top-level configuration file
;;
;; Author: Pablo Rodríguez Robles
;;
;; This and the other files of my Emacs' configuration
;; use (sometimes even the comments are reproduced)
;; the following RESOURCES:
;;
;; [1] [http://aaronbedra.com/emacs.d/]
;; [2] [http://y.tsutsumi.io/emacs-from-scratch-part-1-
;;      extending-emacs-basics.html]
;; [3]
;; ----------------------------------------------

;; User details
(defun author-name  () "Pablo Rodríguez Robles")
(defun author-email () "pablordrrbl@gmail.com")

;; Adding other folders to the path
(add-to-list 'load-path (expand-file-name "~/.emacs.d/lisp"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/lib"))

(load "~/.emacs.d/lisp/my-noexternals.el")
(load "~/.emacs.d/lisp/my-loadpackages.el")
(load "~/.emacs.d/lisp/my-packages.el")
(load "~/.emacs.d/lisp/my-python.el")
(load "~/.emacs.d/lisp/my-keys.el")

;; BASIC CUSTOMIZATION
;; --------------------------------------



;; Disable the visible-bell (annoying square)
;; [http://emacs.stackexchange.com/questions/20100/what-is-this-square-
;; in-the-middle-of-the-emacs-gui]
;;
(setq ring-bell-function 'ignore)

;; Skip straight to the scratch buffer.
;; So turn off the scratch message while we're at it.
;; Since I end up using org-mode most of the time,
;; set the default mode accordingly.
(setq inhibit-splash-screen t
      initial-scratch-message nil
      initial-major-mode 'org-mode)

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

;; Load solarized-light if in a graphical environment.
;; Load the wombat theme if in a terminal.
(if window-system
    (load-theme 'solarized-light t)
  (load-theme 'wombat t))

;; TODO: Folder to the backup files


;; init.el ends here
