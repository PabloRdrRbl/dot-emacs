;; my-editor.el --- Different GNU Emacs writing preferences
;;
;; Author: Pablo Rodríguez Robles
;;
;; --------------------------------------------------------


(setq-default indent-tabs-mode nil)   ;; Don't use tabs to indent.
(setq-default tab-width 4)            ;; But maintain correct appearance.

;; This will put empty line markers into the left hand side.
(setq-default indicate-empty-lines t)
(when (not indicate-empty-lines)
  (toggle-indicate-empty-lines))

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

;; Hippie expand is dabbrev expand on steroids.
(setq hippie-expand-try-functions-list '(try-expand-dabbrev
                                         try-expand-dabbrev-all-buffers
                                         try-expand-dabbrev-from-kill
                                         try-complete-file-name-partially
                                         try-complete-file-name
                                         try-expand-all-abbrevs
                                         try-expand-list
                                         try-expand-line
                                         try-complete-lisp-symbol-partially
                                         try-complete-lisp-symbol))

;; Smart tab behavior - indent or complete.
(setq tab-always-indent 'complete)

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

(add-hook 'prog-mode-hook 'whitespace-mode) ;; only in major modes
                                            ;; for programming

;; Use shift + arrow keys to switch between visible buffers.
(require 'windmove)
(windmove-default-keybindings)

;; Highlight the current line.
(global-hl-line-mode +1)

;; whitespace-mode config
(require 'whitespace)
(setq whitespace-line-column 80) ;; limit line length
(setq whitespace-style '(face tabs empty trailing lines-tail))

;; BACKUP PREFERENCES
;; --------------------------------------
;; TODO: Folder to the backup files


(provide 'my-editor)

;; my-editor.el ends here
