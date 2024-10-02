(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

(unless package-archive-contents
  (package-refresh-contents))

(setq package-list '(kanagawa-themes))

(defun pm/require (package)
  (unless (package-installed-p package)
    (package-install package)))

(defun pm/require-theme (package)
  (setq package-theme (concat package "-themes"))
  (unless (package-installed-p package-theme)
    (package-install package-theme)))

(defun pm/test (t)
  (concat t "2"))

(pm/test "test")
