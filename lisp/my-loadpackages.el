;; my-loadpackages.el --- Package loading file (GNU Emacs)
;;
;; Author: Pablo Rodríguez Robles
;;
;; --------------------------------------------------------


;; loading package
(require 'my-packages)

;; *** HELM ***
(require 'helm-config)
(helm-mode 1)

;; *** MAGIT ***
;; Great post on magit here:
;; [https://www.masteringemacs.org/article/introduction
;; -magit-emacs-mode-git]
;;
(require 'magit)
(define-key global-map (kbd "C-c m") 'magit-status)

;; *** YASNIPPET ***
(add-to-list 'load-path "~/.emacs.d/snippets/yasnippet-snippets")
(require 'yasnippet)
(yas-global-mode 1)

(provide 'my-loadpackages)

;; my-loadpackages.el ends here
