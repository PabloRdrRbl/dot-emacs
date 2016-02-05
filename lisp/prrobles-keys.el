;; prrobles-keys.el --- Key bindings configuration file (GNU Emacs)

;; Allow left/right arrow key navigation of the buffer list and deactivate
;; up/down in iswitchb [http://emacswiki.org/emacs/IswitchBuffers]
;;
(require 'edmacro)
(defun iswitchb-local-keys ()
  (mapc (lambda (K)
	  (let* ((key (car K)) (fun (cdr K)))
	    (define-key iswitchb-mode-map (edmacro-parse-keys key) fun)))
	'(("<right>" . iswitchb-next-match)
	  ("<left>"  . iswitchb-prev-match)
	  ("<up>"    . ignore             )
	  ("<down>"  . ignore             ))))
(add-hook 'iswitchb-define-mode-map-hook 'iswitchb-local-keys)

;; Move between windows using Alt and the arrow keys.
;; [http://emacswiki.org/emacs/WindMove]
;;
(global-set-key (key-literal "M-<left>")  'windmove-left)
(global-set-key (key-literal "M-<right>") 'windmove-right)
(global-set-key (key-literal "M-<up>")    'windmove-up)
(global-set-key (key-literal "M-<down>")  'windmove-down)

;; And switch between buffers with Control and the arrow keys.
(require 'prev-next-buffer)
(global-set-key (key-literal "C-<left>")  'previous-buffer)
(global-set-key (key-literal "C-<right>") 'next-buffer)

;; Spanish keyboard modifications
(global-set-key (kbd "M-1") "|")
(global-set-key (kbd "M-2") "@")
(global-set-key (kbd "M-3") "#")
(global-set-key (kbd "M-º") "\\")
(global-set-key (kbd "M-ç") "}")
(global-set-key (kbd "M-+") "]")
(global-set-key (kbd "M-ñ") "~")
