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

;; Spanish keyboard modifications
;; DEPRECATED
;;(global-set-key (kbd "M-1") "|")
;;(global-set-key (kbd "M-2") "@")
;;(global-set-key (kbd "M-3") "#")
;;(global-set-key (kbd "M-º") "\\")
;;(global-set-key (kbd "M-ç") "}")
;;(global-set-key (kbd "M-+") "]")
;;(global-set-key (kbd "M-ñ") "~")


(provide 'my-keys)

;; my-keys.el ends here
