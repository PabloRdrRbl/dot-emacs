;; my-themes.el --- Themes for my GNU Emacs setup
;;
;; Author: Pablo Rodríguez Robles
;;
;; --------------------------------------------------------

;; Custom themes path
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")

;; Load one if in a graphical environment.
;; Load the another theme if in a terminal.
;; [http://batsov.com/articles/2012/02/19/color-theming-in-emacs-reloaded/]
;;
;; Here you have a nice Emacs' themes gallery
;; [https://emacsthemes.com/charts/all-time.html]
;;
(if window-system
    (load-theme 'leuven t)
    (load-theme 'leuven t)
)

(require 'smart-mode-line)
(setq sml/no-confirm-load-theme t)
;; delegate theming to the currently active theme
(setq sml/theme nil)
(add-hook 'after-init-hook #'sml/setup)

;; Set font size
;; [http://stackoverflow.com/questions/294664/how-to-set-
;; the-font-size-in-emacs]
;;
(set-face-attribute 'default nil :height 200)


(provide 'my-themes)

;; my-themes.el ends here
