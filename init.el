(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

(require 'use-package)
(setq use-package-always-ensure t)

(setq custom-file (expand-file-name "custom.el" user-emacs-directory))
(setq inhibit-splash-screen t)

(setq display-line-numbers-type 'relative)
(setq make-backup-files nil)
(setq ring-bell-function 'ignore)
(setq scroll-margin 5)
(setq scroll-conservatively 101)
(setq scroll-preserve-screen-position t)
;; (setq eldoc-echo-area-use-multiline-p nil)

(column-number-mode 1)
(show-paren-mode 1)
(global-display-line-numbers-mode 1)
(scroll-bar-mode -1)
(tool-bar-mode -1)
(menu-bar-mode -1)
(electric-pair-mode 1)

(global-set-key (kbd "M-/") 'completion-at-point)

(add-hook 'eglot-managed-mode-hook
          (lambda ()
            (eldoc-mode -1)))

(use-package solarized-theme
  :ensure t
  :config
  (load-theme 'solarized-light t))

(set-face-attribute 'default nil :font "Maple Mono-18")

					; c config
(setq c-basic-offset 2)

					; svelte config
(use-package svelte-mode
  :mode "\\.svelte\\'"
  :hook (svelte-mode . eglot-ensure))

;; (use-package svelte-mode
;;   :mode "\\.svelte\\'"
;;   :hook (svelte-mode . eglot-ensure)
;;   :config
;;   (with-eval-after-load 'eglot
;;     (add-to-list 'eglot-server-programs
;;                  '(svelte-mode . ("svelteserver" "--stdio")))))

					; hex cofig
(add-to-list 'auto-mode-alist '("\\.bin\\'" . hexl-mode))


(load-file custom-file)
