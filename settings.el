
(defun author-name  () "Pablo Rodríguez Robles")
(defun author-email () "pablordrrbl@gmail.com")

;(add-to-list 'load-path (expand-file-name "~/.emacs.d/lisp"))
(add-to-list 'load-path (expand-file-name "~/.emacs.d/lib"))

(require 'package)
(require 'cl)

(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives
             '("org" . "http://orgmode.org/elpa/") t)
(add-to-list 'package-archives
             '("elpy" . "http://jorgenschaefer.github.io/packages/") t)
(add-to-list 'package-archives
            '("python-mode" . "https://gitlab.com/python-mode-devs/python-mode") t)

(package-initialize)

(defvar required-packages
  '(
    ace-window
    elpy
    exec-path-from-shell
    expand-region
    flycheck
    helm
    magit
    markdown-mode
    org
    python-mode
    py-autopep8
    smart-mode-line
    yasnippet
  ) "a list of packages to ensure are installed at launch.")

(defun packages-installed-p ()
  (loop for p in required-packages
        when (not (package-installed-p p)) do (return nil)
        finally (return t)))

(unless (packages-installed-p)
  ;; Check for new packages (package versions)
  (message "%s" "Emacs is now refreshing its package database...")
  (package-refresh-contents)
  (message "%s" " done.")
  ;; Install the missing packages
  (dolist (p required-packages)
    (when (not (package-installed-p p))
      (package-install p))))

(add-to-list 'load-path "~/.emacs.d/lib/benchmark-init/")
(require 'benchmark-init-loaddefs)
(benchmark-init/activate)

(require 'yasnippet)
(setq yas-snippet-dirs
      '("~/.emacs.d/snippets/yasnippet-snippets"    ;; the default collection
        "~/.emacs.d/snippets/my-snippets"           ;; personal snippets
        ))
(yas-global-mode 1)

(require 'helm)
(require 'helm-config)

(setq helm-split-window-in-side-p           t
      helm-move-to-line-cycle-in-source     t
      helm-ff-search-library-in-sexp        t
      helm-scroll-amount                    8
      helm-ff-file-name-history-use-recentf t)

(require 'org)
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)

(setq org-agenda-files (list "~/Dropbox/org/university.org"
                             "~/Dropbox/org/personal.org" 
                             "~/Dropbox/org/erasmus.org"))

;(setq org-startup-truncated nil)

(setq-default indent-tabs-mode nil)

(setq-default tab-width 4)

(setq require-final-newline t)

(delete-selection-mode t)
(transient-mark-mode t)
(setq x-select-enable-clipboard t)

(blink-cursor-mode -1)

(show-paren-mode 1)

(setq blink-matching-paren nil)

(setq-default fill-column 80)

(setq make-backup-files nil)

(setq auto-save-default nil)

(setq mac-command-modifier 'meta)

(setq mac-option-modifier nil)

(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action)
(define-key helm-map (kbd "C-i") 'helm-execute-persistent-action)
(define-key helm-map (kbd "C-z")  'helm-select-action)

(global-set-key (kbd "M-y") 'helm-show-kill-ring)
(global-set-key (kbd "M-x") 'helm-M-x)

(global-set-key (kbd "C-x b") 'helm-mini)
(global-set-key (kbd "C-x C-f") 'helm-find-files)

(global-set-key (kbd "M-p") 'ace-window)

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")

(if window-system
    (load-theme 'leuven t)
    (load-theme 'leuven t)
)

(require 'smart-mode-line)
(setq sml/no-confirm-load-theme t)
(setq sml/theme nil)
(add-hook 'after-init-hook #'sml/setup)

(set-face-attribute 'default nil :height 200)

(when (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(when (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(when (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

(setq inhibit-startup-screen t)

(setq inhibit-splash-screen t
      initial-scratch-message nil
      initial-major-mode 'org-mode
      )

(line-number-mode t)
(column-number-mode t)
(size-indication-mode t)

(global-linum-mode t)

(setq initial-frame-alist
      '(
        (width . 85) ; character
        (height . 35) ; lines
        ))

(setq ring-bell-function 'ignore)
