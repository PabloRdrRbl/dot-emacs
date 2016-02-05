;; prrobles-packages.el --- Package installation

;; package.el
(require 'package)

(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)
(add-to-list 'package-archives
             '("org" . "http://orgmode.org/elpa/") t)
(add-to-list 'package-archives
             '("elpy" . "http://jorgenschaefer.github.io/packages/") t)

(package-initialize)
(when (not package-archive-contents)
  (package-refresh-contents))

;; A list of packages to ensure are installed at launch
(defvar my-packages
  '(better-defaults
    ein
    elpy
    flycheck
    material-theme
    py-autopep8)
    "A list of packages to ensure are installed at launch.")

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

(provide 'prrobles-packages)

;; prrobles-packages.el ends here
