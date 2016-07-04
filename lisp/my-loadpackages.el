;; my-loadpackages.el --- Package loading file (GNU Emacs)
;;
;; Author: Pablo Rodríguez Robles
;;
;; --------------------------------------------------------


;; loading package
(require 'my-packages)

;; *** BENCHMARK INIT ***
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



(provide 'my-loadpackages)

;; my-loadpackages.el ends here

