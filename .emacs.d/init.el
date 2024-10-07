(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(setq warning-minimum-level :errors)

;;(pm/require-theme 'kanagawa)
;;(load-theme 'kanagawa-wave t)

(use-package atom-one-dark-theme
  :ensure t
  :config (load-theme 'atom-one-dark t))

(setq backup-directory-alist '(("" . "~/.emacs.d/emacs_backups")))

(setq custom-file "~/.emacs.d/emacs-custom.el")
(load custom-file)

(setq inhibit-startup-screen t)

(tool-bar-mode 0)
(scroll-bar-mode 0)
(menu-bar-mode 0)

(global-display-line-numbers-mode 1)
(setq-default display-line-numbers-type 'relative)

(fido-mode 1)
(fido-vertical-mode 1)

(add-to-list 'default-frame-alist '(font . "Iosevka-18" ))

(use-package magit
  :ensure t)

(use-package typescript-mode
  :ensure t)
(use-package json-mode
  :ensure t)
(use-package rjsx-mode
  :ensure t)

;;(global-whitespace-mode 1)
;;(setq  whitespace-toggle-options '(trailing))

(setq-default indent-tabs-mode nil)
(setq typescript-indent-level 2)
