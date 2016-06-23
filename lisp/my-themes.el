;; my-themes.el --- Themes for my GNU Emacs setup
;;
;; Author: Pablo Rodríguez Robles
;;
;; --------------------------------------------------------

;; Custom themes path
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")

;; Load solarized-light if in a graphical environment.
;; Load the wombat theme if in a terminal.
;; [http://batsov.com/articles/2012/02/19/color-theming-in-emacs-reloaded/]
;;
;; Here you have a nice Emacs' themes gallery
;; [https://emacsthemes.com/charts/all-time.html]
;;
(if window-system
    (load-theme 'tangotango t)
  (load-theme 'sanityinc-tomorrow-blue t))

;; Set font size
;; [http://stackoverflow.com/questions/294664/how-to-set-
;; the-font-size-in-emacs]
;;
(set-face-attribute 'default nil :height 200)


(provide 'my-themes)

;; my-themes.el ends here
