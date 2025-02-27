(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Comment/uncomment this line to enable MELPA Stable if desired.
;; See `package-archive-priorities` and `package-pinned-packages`.
;; Most users will not need or want to do this.
;; (add-to-list 'package-archives
;;              '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(sly nova-theme nord-theme kind-icon cape lsp-mode orderless corfu highlight-thing arjen-grey-theme nov evil)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(push "~/.emacs.d/custom" load-path)

;;; basic configurations
(load "basic-custom.el")

(load-theme 'nord t)

(use-package evil
  :init
  (load "evil-custom.el")
  :config
  (evil-mode 1))

(use-package highlight-thing
  :init
  :config
  (global-highlight-thing-mode)
  (load "ht-custom.el")
  )

(use-package corfu
  :custom
  (corfu-auto t)
  (corfu-echo-documentaton t)
  :hook
  ((emacs-lisp-mode . corfu-mode))
  :init
  (global-corfu-mode)
  :config
  (load "corfu-custom.el")
  )

(use-package cape
  :init
  (add-hook 'completion-at-point-functions #'cape-dabbrev)
  (add-hook 'completion-at-point-functions #'cape-file)
  (add-hook 'completion-at-point-functions #'cape-elisp-block)
  )

(use-package kind-icon
  :ensure t
  :after corfu
  ;:custom
  ;(kind-icon-blend-background t)
  ;(kind-icon-default-face 'corfu-default) ; only needed with blend-background
  :config
  (add-to-list 'corfu-margin-formatters #'kind-icon-margin-formatter))

(use-package orderless
  :ensure t
  :init
  (icomplete-mode)
  :config
  (load "orderless-custom.el")
  )

(use-package lsp-mode
  :custom
  (lsp-completion-provider :none) ;; Corfu
  :init (defun my/lsp-mode-setup-completion ()
	  (setf (alist-get 'styles (alist-get 'lsp-capf completion-category-defaults)) '(orderless))) ;; Configure orderless
  :hook
  (lsp-completion-mode . my/lsp-mode-setup-completion))

(use-package nov
  :init
  (add-to-list 'auto-mode-alist '("\\.epub\\'" . nov-mode))
  :config
  (load "nov-custom.el"))

(provide 'init)

