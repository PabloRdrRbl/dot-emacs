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
;; [3] [https://github.com/vterron/dot-emacs]
;; [4] [http://pedrokroger.net/configuring-emacs-python-ide/]
;; [5] [https://github.com/kpurdon/kp-emacs]
;;
;; *** TO RUN THIS CONFIGURATION YOU NEED TO ***
;; *** INSTALL THE FOLLOWING PYTHON PACKAGES ***
;;
;;     * autopep8
         [https://anaconda.org/conda-forge/autopep8]
;;     * flake8
;;     * jedi
;;
;; ----------------------------------------------

;; User details
(defun author-name  () "Pablo Rodríguez Robles")
(defun author-email () "pablordrrbl@gmail.com")

;; Adding other folders to the path
(add-to-list 'load-path (expand-file-name "~/.emacs.d/lisp"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/lib"))

(add-hook 'after-init-hook '(lambda ()
  (load "~/.emacs.d/lisp/my-loadpackages.el")
  (load "~/.emacs.d/lisp/my-packages.el")
  (load "~/.emacs.d/lisp/my-noexternals.el")
  (load "~/.emacs.d/lisp/my-python.el")
  (load "~/.emacs.d/lisp/my-keys.el"))


;; init.el ends here
