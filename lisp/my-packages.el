;; my-packages.el --- Package installation
;;
;; Author: Pablo Rodríguez Robles
;;
;; --------------------------------------------------------

;; Loads the package 'package' via the require keyword
(require 'package)

;; Setup ELPA package sources
(require 'cl)

;; Installs relevant package managers
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives
             '("org" . "http://orgmode.org/elpa/") t)
(add-to-list 'package-archives
             '("elpy" . "http://jorgenschaefer.github.io/packages/") t)
(add-to-list 'package-archives
            '("python-mode" . "https://gitlab.com/python-mode-devs/python-mode") t)

;; Initializes the package system so definitions are loaded
(package-initialize)

;; defvar is the correct way to declare global variables
;; you might see setq as well, but setq is supposed to be
;; use just to set variables, not create them.
(defvar required-packages
  '(
    ace-window
    color-theme-sanityinc-tomorrow
    elpy
    exec-path-from-shell
    expand-region
    flycheck
    helm
    magit
    markdown-mode
    org
    python-mode
    py-autopep8
    smart-mode-line
    yasnippet
  ) "a list of packages to ensure are installed at launch.")


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
