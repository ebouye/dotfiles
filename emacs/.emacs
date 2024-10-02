(load "~/.config/emacs-pm/emacs-pm.el")
(package-initialize)

(setq warning-minimum-level :emergency)

(pm/require-theme 'kanagawa)
(load-theme 'kanagawa-wave t)

(setq backup-directory-alist '(("" . "~/.emacs.d/emacs_backups")))

(setq custom-file "~/.config/emacs-custom.el")
(load custom-file)

(setq inhibit-startup-screen t)

(tool-bar-mode 0)
(scroll-bar-mode 0)
(menu-bar-mode 0)

(global-display-line-numbers-mode 1)
(setq display-line-numbers 'relative)

(ido-mode 1)

(add-to-list 'default-frame-alist '(font . "Iosevka-18" ))

(pm/require 'magit)
