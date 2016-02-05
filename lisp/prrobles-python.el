;; prrobles-python.el --- Python configuration file (GNU Emacs)

(require 'elpy)
(elpy-enable)

;; IPython as REPL
;; (elpy-use-ipython)

;; use flycheck not flymake with elpy
(when (require 'flycheck nil t)
  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
  (add-hook 'elpy-mode-hook 'flycheck-mode))

;; enable autopep8 formatting on save
(require 'py-autopep8)
(add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)

(provide 'prrobles-python)

;; prrobles-python.el ends here
