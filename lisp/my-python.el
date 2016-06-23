;; my-python.el --- Python configuration file (GNU Emacs)
;;
;; Author: Pablo Rodríguez Robles
;;
;; --------------------------------------------------------

(require 'elpy)
(elpy-enable)

pyvenv-activate

;; Let us use Anaconda environments
;; http://emacs.stackexchange.com/questions/20092/using-conda-environments-in-emacs
;;
(setenv "WORKON_HOME" "~/miniconda3/envs")
(pyvenv-mode 1)
(pyvenv-workon 'scipy)


;; IPython as REPL
(elpy-use-ipython)

;; use flycheck not flymake with elpy
(when (require 'flycheck nil t)
  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
  (add-hook 'elpy-mode-hook 'flycheck-mode))

;; enable autopep8 formatting on save
(require 'py-autopep8)
(add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)

(provide 'my-python)

;; my-python.el ends here
