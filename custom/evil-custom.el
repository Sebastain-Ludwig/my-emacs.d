(require 'evil)
(evil-set-leader 'normal (kbd "<SPC>"))

;;; Leader key bind for convinience
(evil-define-key 'normal 'global (kbd "<leader>f") 'find-file)
(evil-define-key 'normal 'global (kbd "<leader>t") 'term)
(evil-define-key 'normal 'global (kbd "<leader>bn") 'next-buffer)
(evil-define-key 'normal 'global (kbd "<leader>np") 'previous-buffer)
(evil-define-key 'normal 'global (kbd "<leader>wn") 'split-window-right)
(evil-define-key 'normal 'global (kbd "<leader>wb") 'split-window-below)
(evil-define-key 'normal 'global (kbd "<leader>nf") 'make-frame-command)

;;; menu and tool bar behavier
(evil-define-key 'normal 'global (kbd "<leader>mt") 'tool-bar-mode)
(evil-define-key 'normal 'global (kbd "<leader>mm") 'menu-bar-mode)

