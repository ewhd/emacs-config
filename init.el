;; See: https://xvrdm.github.io/2017/05/29/a-minimal-emacs-setup-with-orgmode/

;; add MELPA package server
(require 'package)

(add-to-list 'package-archives 
  '("melpa" . "http://melpa.org/packages/"))

(unless package-archive-contents
  (package-refresh-contents))

(package-initialize)

;; if not yet installed, install package use-package
(unless (package-installed-p 'use-package)
  (package-install 'use-package))



;; Set the working directory to home regardless of where Emacs was started from
;;(cd "~/")



;; load org package and our emacs-config.org file
(require 'org)
(org-babel-load-file "~/.emacs.d/emacs-config.org") 
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(tango-dark))
 '(inhibit-startup-screen t)
 '(line-spacing 0.0)
 '(package-selected-packages '(evil markdown-mode helm-org-rifle use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
