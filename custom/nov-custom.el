(defun my-nov-font-setup ()
  (face-remap-add-relative 'variable-pitch :family "Courier New"
                                           :height 1.0))
(add-hook 'nov-mode-hook 'my-nov-font-setup)
