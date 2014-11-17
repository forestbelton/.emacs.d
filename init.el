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

(setq backup-directory-alist '(("." . "~/.emacs.d/saves")))

;; Set up indentation
(setq-default indent-tabs-mode nil)
(setq default-tab-width 4)
(define-key global-map (kbd "RET") 'newline-and-indent)

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
