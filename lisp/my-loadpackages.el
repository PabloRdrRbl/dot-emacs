;; my-loadpackages.el --- Package installation file (GNU Emacs)
;;
;; Author: Pablo Rodríguez Robles
;;
;; --------------------------------------------------------


;; Loads the package 'package' via the require keyword
(require 'package)

;; Installs relevant package managers
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives
             '("org" . "http://orgmode.org/elpa/") t)
(add-to-list 'package-archives
             '("elpy" . "http://jorgenschaefer.github.io/packages/") t)

;; Initializes the package system so definitions are loaded
(package-initialize)


;; PACKAGE LOADING AND CONFIGURATION
;; --------------------------------------



(provide 'my-loadpackages)

;; my-loadpackages.el ends here
