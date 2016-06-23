;; my-packages.el --- Package installation
;;
;; Author: Pablo Rodríguez Robles
;;
;; --------------------------------------------------------

;; defvar is the correct way to declare global variables
;; you might see setq as well, but setq is supposed to be
;; use just to set variables, not create them.
(defvar required-packages
  '(
    color-theme-sanityinc-tomorrow
    elpy
    flycheck
    magit
    python-mode
    py-autopep8
    yasnippet
  ) "a list of packages to ensure are installed at launch.")

;; Setup ELPA package sources
(require 'cl)

;; Method to check if all packages are installed
;; Package-installed-p is from package.el and checks
;; if a package is installed
(defun packages-installed-p ()
  (loop for p in required-packages
        when (not (package-installed-p p)) do (return nil)
        finally (return t)))

;; If not all packages are installed, check one by one and
;; install the missing ones.
(unless (packages-installed-p)
  ;; Check for new packages (package versions)
  (message "%s" "Emacs is now refreshing its package database...")
  (package-refresh-contents)
  (message "%s" " done.")
  ;; Install the missing packages
  (dolist (p required-packages)
    (when (not (package-installed-p p))
      (package-install p))))


(provide 'my-packages)

;; my-packages.el ends here
