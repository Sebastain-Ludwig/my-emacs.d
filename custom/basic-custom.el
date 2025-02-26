(global-display-line-numbers-mode 1)
(set-face-attribute 'line-number nil
		    :font "Courier New"
		    :height 100)

(global-hl-line-mode 1)

;;; Cursor face configurations
(set-face-background hl-line-face "#4B4B4B")
(set-face-background 'cursor "#BEBEBE")

(setq-default line-spacing 0.25)

(add-to-list 'default-frame-alist
	     '(font . "Courier New-12:bold"))

(menu-bar-mode 0)
(tool-bar-mode 0)

;;; Scroll bar configurations
(scroll-bar-mode -1)

(require 'paren)
(set-face-background 'show-paren-match "#F5F5DC")


