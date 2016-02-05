;; init.el --- GNU Emacs top-level configuration file

(defun author-name  () "Pablo Rodríguez Robles")
(defun author-email () "pablordrrbl@gmail.com")

(add-to-list 'load-path (expand-file-name "~/.emacs.d/lisp"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/lib"))

(require 'prrobles-packages)

(require 'prrobles-keys)
(require 'prrobles-python)
;; (require 'prrobles-spell)

;; BASIC CUSTOMIZATION
;; --------------------------------------

;; Supress the startup echo area message. This *must* be here (.emacs)
;; Please note that Emacs forces us to hardcode our login name here
(setq inhibit-startup-echo-area-message "USERNAME")
(setq inhibit-startup-message t)

(load-theme 'material t) ;; load material theme
(global-linum-mode t) ;; enable line numbers globally

;; The content of the scratch buffer when Emacs starts up
(setq initial-scratch-message
  "  Andaluces de Jaén,
  aceituneros altivos,
  decidme en el alma: ¿quién,
  quién levantó los olivos?\n
  No los levantó la nada,
  ni el dinero, ni el señor,
  sino la tierra callada,
  el trabajo y el sudor.\n\n")

;; Let us know how much time Emacs is taking to load.
;; [http://cheat.errtheblog.com/s/emacs_tips/]
;;
(message "Emacs loaded in %fs"
  (* 0.000001 (apply #'-
    (mapcar (lambda (time)
              (+ (* 1000000 (+ (* 65536 (first time))
              (second time))) (third time)))
            (list (current-time) before-init-time)))))

;; init.el ends here
