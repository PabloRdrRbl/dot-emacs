;; my-loadpackages.el --- Package loading file (GNU Emacs)
;;
;; Author: Pablo Rodríguez Robles
;;
;; --------------------------------------------------------


;; loading package
(require 'my-packages)

;; *** BENCHMARK INIT ***
;; [https://github.com/dholm/benchmark-init-el]
;;
;; Run make inside the directory where you installed
;; benchmark-init, this will produce the
;; benchmark-init-loaddefs.el file. 
(add-to-list 'load-path "~/.emacs.d/lib/benchmark-init/")
(require 'benchmark-init-loaddefs)
(benchmark-init/activate)

;; *** YASnippet ***
;; [https://github.com/joaotavora/yasnippet]
;;
(require 'yasnippet)
(setq yas-snippet-dirs
      '("~/.emacs.d/snippets/yasnippet-snippets"    ;; the default collection
        "~/.emacs.d/snippets/my-snippets"           ;; personal snippets
        ))
(yas-global-mode 1)

;; *** HELM ***
;; [http://daemons.cf/posts/introduccin-a-helm/]
;;
;; More config in lisp/my-keys.el
(require 'helm)
(require 'helm-config)

(setq helm-split-window-in-side-p           t
      helm-move-to-line-cycle-in-source     t
      helm-ff-search-library-in-sexp        t
      helm-scroll-amount                    8
      helm-ff-file-name-history-use-recentf t)


(provide 'my-loadpackages)

;; my-loadpackages.el ends here

