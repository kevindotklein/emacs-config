(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

(require 'use-package)
(setq use-package-always-ensure t)

(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(setq inhibit-splash-screen t)

(setq display-line-numbers-type 'relative)
(setq make-backup-files nil)
(setq ring-bell-function 'ignore)

(column-number-mode 1)
(show-paren-mode 1)
(global-display-line-numbers-mode 1)
(scroll-bar-mode -1)
(tool-bar-mode -1)
(menu-bar-mode -1)
(electric-pair-mode 1)

(use-package solarized-theme
  :ensure t
  :config
  (load-theme 'solarized-light t))

; c config
(setq c-basic-offset 2)

; svelte config
(use-package svelte-mode
  :mode "\\.svelte\\'")

(load-file custom-file)
