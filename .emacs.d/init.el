(add-to-list 'load-path "~/.emacs.d/lisp/")
(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)

(when (not package-archive-contents)
  (package-refresh-contents))

;; Add in your own as you wish:
(defvar my-packages '(starter-kit zenburn-theme auto-complete clojure-mode nrepl)
  "A list of packages to ensure are installed at launch.")

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("71b172ea4aad108801421cc5251edb6c792f3adbaecfa1c52e94e3d99634dee7" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(load-theme 'misterioso)
(scroll-bar-mode)
(tool-bar-mode)
(linum-mode)

(if (window-system)
  (set-frame-width (selected-frame) 140))
(global-auto-revert-mode t)

;; disable line wrap
(setq default-truncate-lines t)
;; Add F12 to toggle line wrap
(global-set-key [f12] 'toggle-truncate-lines)

(setq line-number-mode t)
(setq column-number-mode t)
(global-linum-mode 1)
