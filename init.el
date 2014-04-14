;; init.el
;;

;; Set load paths
(setq init-dir (file-name-directory (or load-file-name (buffer-file-name))))

(add-to-list 'load-path init-dir)
(add-to-list 'load-path (concat init-dir "/emacs-starter-kit"))
(add-to-list 'load-path (concat init-dir "/vendor"))
(add-to-list 'load-path (concat init-dir "/theme"))

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

(require 'package)
(add-to-list 'package-archives
    '("marmalade" .
      "http://marmalade-repo.org/packages/"))
(package-initialize)

(unless (package-installed-p 'clojure-mode)
  (package-refresh-contents)
  (package-install 'clojure-mode))

;; Default fonts
(set-face-attribute 'default nil :font "Monaco-14")

;; Default window size
(add-to-list 'default-frame-alist '(height . 50))
(add-to-list 'default-frame-alist '(width . 180))

;; Custom bindings
(global-set-key (kbd "C-o") 'other-window)
(define-key global-map (kbd "<M-RET>") 'cua-set-rectangle-mark)

(setq default-tab-width 2)

(add-to-list 'load-path (concat init-dir "/elpa/clojure-mode-2.1.1/clojure-mode.el"))
(require 'clojure-mode)
(add-to-list 'auto-mode-alist '("\.clj$" . clojure-mode))

(add-to-list 'load-path (concat init-dir "/elpa/paredit-22/paredit.el"))
(require 'paredit)
(add-hook 'clojure-mode-hook 'paredit-mode)

(setenv "PATH" (concat "/usr/local/bin:" (getenv "PATH"))) 
(setq exec-path (append exec-path '("/usr/local/bin")))

