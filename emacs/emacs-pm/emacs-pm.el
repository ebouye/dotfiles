(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

(defun refresh-package-archive ()
  (unless package-archive-contents
    (package-refresh-contents)))

(defun pm/require (package)
  (unless (package-installed-p package)
    (refresh-package-archive)
    (package-install package)))

(defun pm/require-theme (package)
  (setq package-theme (read
		       (format "%s%s" package "-theme")))
  (unless (package-installed-p package-theme)
    (refresh-package-archive)
    (package-install package-theme)))
