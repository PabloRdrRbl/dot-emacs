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
(add-to-list 'package-archives
            '("python-mode" . "https://gitlab.com/python-mode-devs/python-mode") t)

;; Initializes the package system so definitions are loaded
(package-initialize)


;; PACKAGE LOADING AND CONFIGURATION
;; --------------------------------------

;; loading package
(load "~/.emacs.d/lisp/my-packages.el")

;; *** MAGIT ***
;; Great post on magit here:
;; [https://www.masteringemacs.org/article/introduction
;; -magit-emacs-mode-git]
;;
(require 'magit)
(define-key global-map (kbd "C-c m") 'magit-status)

;; *** POWERLINE ***
(sml/setup)
(setq sml/no-confirm-load-theme t)
(setq sml/theme 'light)


;; *** YASNIPPET ***
;;(require 'yasnippet)
;;(yas-global-mode 1)
;;(yas-load-directory "~/.emacs.d/snippets")
;;(add-hook 'term-mode-hook (lambda()
;;    (setq yas-dont-activate t)))


(provide 'my-loadpackages)

;; my-loadpackages.el ends here
