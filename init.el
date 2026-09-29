(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

(require 'use-package)
(setq use-package-always-ensure t)

(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(setq inhibit-splash-screen t)

(setq display-line-numbers-type 'relative)

(column-number-mode 1)
(show-paren-mode 1)
(global-display-line-numbers-mode 1)
(scroll-bar-mode -1)
(electric-pair-mode 1)

; c config
(setq c-basic-offset 2)

; svelte config
(use-package svelte-mode
  :mode "\\.svelte\\'")

(load-file custom-file)
