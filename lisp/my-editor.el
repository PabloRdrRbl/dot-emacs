;; my-editor.el --- Different GNU Emacs writing preferences
;;
;; Author: Pablo Rodríguez Robles
;;
;; --------------------------------------------------------


(setq-default indent-tabs-mode nil)   ;; Don't use tabs to indent.
(setq-default tab-width 4)            ;; But maintain correct appearance.

;; This will put empty line markers into the left hand side.
;;(setq-default indicate-empty-lines t)
;;(when (not indicate-empty-lines)
;;  (toggle-indicate-empty-lines))

;; Newline at end of file.
(setq require-final-newline t)

;; Typing then the mark is active will write over the marked region.
;; Make the common highlighting keystrokes work the way most people
;; expect them to.
;; Emacs also has it's own clipboard and doesn't respond to the system
;; clipboard by default, so tell Emacs that we're all friends and can get along.
(delete-selection-mode t)
(transient-mark-mode t)
(setq x-select-enable-clipboard t)

;; New lines without RET.
;; Deprecated, it is better to use C-o in order to get this.
;(setq next-line-add-newlines t)

;; The blinking cursor is nothing, but an annoyance.
(blink-cursor-mode -1)

;; Turn on highlight matching brackets when cursor is on one
;; [http://ergoemacs.org/emacs/emacs_highlight_parenthesis.html]
;;
(show-paren-mode 1)

;; Disable annoying blink-matching-paren.
(setq blink-matching-paren nil)

;; IBM 80 column punch card style!
(setq-default fill-column 80)

;; Highlight lines that exceed a certain length limit
;; [http://emacsredux.com/blog/2013/05/31/highlight-lines-
;; that-exceed-a-certain-length-limit/]
(require 'whitespace)
(setq whitespace-line-column 80) ;; limit line length
(setq whitespace-style '(face tabs empty trailing lines-tail))
                         ;; what kind of stuff is
                         ;; going to highlight

;; Highlight the current line.
;(global-hl-line-mode +1)

;; BACKUP PREFERENCES
;; --------------------------------------
;; Maybe in the future I would like to place this kind
;; of files in a folder or in a tree
(setq make-backup-files nil) ; stop creating backup~ files
(setq auto-save-default nil) ; stop creating #autosave# files


(provide 'my-editor)

;; my-editor.el ends here
