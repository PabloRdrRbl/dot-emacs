;; my-python.el --- Python configuration file (GNU Emacs)
;;
;; Author: Pablo Rodríguez Robles
;;
;; --------------------------------------------------------

;; There are two python modes: python.el and python-mode.el.
;; python-mode.el has support for Ipython.
;(require 'python-mode)
;(add-to-list 'auto-mode-alist '("\.py\'" . python-mode))

;; To install and enable elpy we need to install flake8 and jedi
;; using your preferred method for installing Python packages.
;; Enable elpy (emacs lisp python)
(require 'elpy)
(elpy-enable)

;; Emacs+Elpy comes with a package called Flymake to support syntax checking.
;; Flycheck supports realtime syntax checking.
(when (require 'flycheck nil t)
  (setq elpy-modules (delq 'elpy-module-flymake elpy-modules))
  (add-hook 'elpy-mode-hook 'flycheck-mode))

;; Enable autopep8 formatting on save
(require 'py-autopep8)
(add-hook 'elpy-mode-hook 'py-autopep8-enable-on-save)


;; RUNING A VIRTUAL ENVIRONMENT
;; --------------------------------------
pyvenv-activate

;; Let us use Anaconda environments
;; [http://emacs.stackexchange.com/questions/20092/
;; using-conda-environments-in-emacs]
;;
(setenv "WORKON_HOME" "~/miniconda3/envs")
(pyvenv-mode 1)
(pyvenv-workon 'scipy)


(provide 'my-python)

;; my-python.el ends here
