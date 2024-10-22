(setq custom-file "~/.config/emacs-custom.el")
(load custom-file)

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(setq backup-directory-alist `(("." . "~/.backup-emacs")))

(add-hook 'prog-mode-hook 'display-line-numbers-mode)
(setq-default display-line-numbers-style 'relative)


(fido-mode)
(fido-vertical-mode)

(setq inhibit-startup-screen t)

(setq-default indent-tabs-mode nil)

(add-hook 'prog-mode-hook 'hl-line-mode)

(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

;;(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/junio-theme.el")
(load-theme 'modus-vivendi t)

(add-to-list 'default-frame-alist
             '(font . "Jetbrains Mono-18"))

(use-package flycheck
  :ensure t
  :config
  (global-flycheck-mode))

(use-package all-the-icons
  :ensure t
  :if (display-graphic-p))

(use-package all-the-icons-dired
  :ensure t)

(use-package docker
  :ensure t)

(use-package docker-compose-mode
  :ensure t)

(add-hook 'dired-mode-hook 'all-the-icons-dired-mode)

(use-package typescript-mode
  :ensure t
  :config (setq typescript-indent-level 2))

(use-package php-mode
  :ensure t)


(use-package lsp-mode
  :ensure t
  :init
  ;; set prefix for lsp-command-keymap (few alternatives - "C-l", "C-c l")
  (setq lsp-keymap-prefix "C-c l")
  :hook (((typescript-mode javascript-mode php-mode) . lsp-deferred))
  :commands lsp-deferred
  :config
  (setq gc-cons-threshold 100000000) ;; for lsp performance
  (setq read-process-output-max (* 1024 1024)) ;; 1mb
  (setq lsp-log-io nil))

(use-package lsp-ui
  :ensure t
  :commands lsp-ui-mode
  :config (setq lsp-idle-delay 0.500))

(use-package dap-mode
  :ensure t)

(use-package company
  :ensure t
  :config (setq company-minimum-prefix-length 1
      company-idle-delay 0.0) ;; default is 0.2
  )
