;; Abilitar indentaçao
(setq-default indent-tabs-mode t)
(setq tab-width 4)

;; Desabilitar o alarme

(setq ring-bell-function 'ignore)

;; Remover o boas vindas

(setq inhibit-startup-message t)

;;Remover menus

(tool-bar-mode -1)
(menu-bar-mode -1)

;;Remover barra de rolagem

(scroll-bar-mode -1)

;; Aumentar a fonte

(set-face-attribute 'default nil :height 140)

;;Pacotes

(require 'package)
(setq package-enable-at-startup nil) ;; desabilita o inicio de ativacao

;; MELPA - gerenciador de pacotes

(add-to-list 'package-archives
	     '("melpa" . "https://melpa.org/packages/"))

(package-initialize)
 
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(add-hook 'prog-mode-hook 'linum-mode)

(use-package try
  :ensure t)

(use-package which-key
  :ensure t
  :config (which-key-mode))
(which-key-setup-side-window-right)

(use-package auto-complete
  :ensure t
  :init
  (progn
  (ac-config-default)
  (global-auto-complete-mode t)))

(use-package neotree
  :ensure t)

(use-package all-the-icons
  :ensure t)

(setq neo-theme (if (display-graphic-p) 'icons 'arrow))

;; nossos atalhos
(global-set-key (kbd "C-<tab>") 'other-window)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (all-the-icons neotree auto-complete which-key try use-package))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
