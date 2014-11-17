(require 'cask "~/.cask/cask.el")
(cask-initialize)

;; Track package installations in Cask file automatically
(require 'pallet)
(pallet-mode t)

;; Disable annoying UI
(setq inhibit-splash-screen t)
(tool-bar-mode -1)

;; UI preferences
(add-to-list 'default-frame-alist '(font . "Inconsolata-14"))
(set-face-attribute 'default t :font "Inconsolata-14")
(load-theme 'tangotango t)

;; Backups
(setq backup-directory-alist '(("." . "~/.emacs.d/saves")))

;; Indentation / Whitespace
(setq-default indent-tabs-mode nil)
(setq default-tab-width 4)
(define-key global-map (kbd "RET") 'newline-and-indent)
(add-hook 'before-save-hook 'delete-trailing-whitespace)

;; Fuzzy matching
(require 'flx-ido)
(ido-mode 1)
(ido-everywhere 1)
(flx-ido-mode 1)

;; Insert matching pairs automatically
(electric-pair-mode t)

;; Git
(require 'magit)
(require 'magit-gh-pulls)
(add-hook 'magit-mode-hook 'turn-on-magit-gh-pulls)

;; JavaScript
(require 'js2-mode)
(autoload 'js2-mode "js2-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

;; SASS
(add-to-list 'auto-mode-alist '("\\.scss$" . scss-mode))
(add-hook 'scss-mode-hook 'rainbow-mode)
