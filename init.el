;; init.el
;;

;; Set load paths
(setq init-dir (file-name-directory (buffer-file-name)))
(add-to-list 'load-path init-dir)
(add-to-list 'load-path (concat init-dir "/emacs-starter-kit"))
(add-to-list 'load-path (concat init-dir "/vendor"))

(require 'better-defaults)

;; M-x enhancement for Emacs 
(require 'smex)
(smex-initialize)

(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;; Some starter init files
(require 'starter-kit-defuns)
(require 'starter-kit-bindings)
(require 'starter-kit-misc)
(require 'starter-kit-eshell)
(require 'starter-kit-lisp)
(require 'starter-kit-perl)
(require 'starter-kit-ruby)
(require 'starter-kit-js)
