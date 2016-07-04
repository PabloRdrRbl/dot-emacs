;; prrobles-keys.el --- Key bindings configuration file (GNU Emacs)
;;
;; Author: Pablo Rodríguez Robles
;;
;; --------------------------------------------------------

;; Meta key and special characters configuration.
;; [http://stackoverflow.com/questions/7743402/how-can-i-
;; change-meta-key-from-alt-to-cmd-on-mac-in-emacs-24]
;;
(setq mac-command-modifier 'meta) ;; cmd Mac key know works as meta key
(setq mac-option-modifier nil)    ;; alt remains been used for composing
                                  ;; special characters

;; BufferSelection
;; [https://www.emacswiki.org/emacs/BufferSelection]
;;
;;(global-set-key (kbd "C-x b") 'bs-show)

;; Helm buffers list.
;; [http://daemons.cf/posts/introduccin-a-helm/]
;;
(define-key helm-map (kbd "<tab>") 'helm-execute-persistent-action)
(define-key helm-map (kbd "C-i") 'helm-execute-persistent-action)
(define-key helm-map (kbd "C-z")  'helm-select-action)

(global-set-key (kbd "M-y") 'helm-show-kill-ring)
(global-set-key (kbd "M-x") 'helm-M-x)

(global-set-key (kbd "C-x b") 'helm-mini)
(global-set-key (kbd "C-x C-f") 'helm-find-files)

;; ace-window. GNU Emacs package for selecting a window to switch to.
;; [https://github.com/abo-abo/ace-window]
;;
(global-set-key (kbd "M-p") 'ace-window)


(provide 'my-keys)

;; my-keys.el ends here
