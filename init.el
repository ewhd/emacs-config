;; See: https://xvrdm.github.io/2017/05/29/a-minimal-emacs-setup-with-orgmode/

;; add MELPA package server
(require 'package)

(add-to-list 'package-archives 
  '("melpa" . "http://melpa.org/packages/"))

;; The purpose of this file is to redirect emacs to look for its 'init' file 
;; under the Home folder of a Windows 10 machine and to recognize its org-mode 
;; formatting.
;;
;; Windows 10 will place .emacs.d under "C:/Users/USER/AppData/Roaming", UNLESS
;; the HOME directory is set, so do that first and set it to "C:\Users\USER\"
;; 
;; This file should be located at "C:\Users\USER\.emacs.d\init.el", along with 
;; the "~/.emacs.d/emacs-config.org" file it refers to.
;; 
;; First, package stuff is initialized, and use-package is installed if it 
;; is not alread.
;; Then org is required.
;; Then emacs is instructed to load "~/.emacs.d/emacs-config.org" as its 'init' 
;; file.
;; The rest is for internal use.
;; 
;; test

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
 '(custom-safe-themes
   '("9685cefcb4efd32520b899a34925c476e7920725c8d1f660e7336f37d6d95764" default))
 '(inhibit-startup-screen t)
 '(initial-buffer-choice "~/Dropbox/gtd/gtd.org")
 '(line-spacing 0.0)
 '(org-global-properties
   '(("Effort_ALL" . "0:00 0:07 0:15 0:30 0:45 1:00 1:30 2:00 2:30 3:00")))
 '(package-selected-packages
   '(moom-font moom org-tree-slide adaptive-wrap highlight-parentheses magit olivetti org-superstar org-appear company-posframe mixed-pitch org-beautify-theme evil markdown-mode helm-org-rifle use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'narrow-to-region 'disabled nil)
(put 'narrow-to-page 'disabled nil)
