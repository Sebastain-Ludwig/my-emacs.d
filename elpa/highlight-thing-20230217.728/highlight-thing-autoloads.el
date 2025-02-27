;;; highlight-thing-autoloads.el --- automatically extracted autoloads
;;
;;; Code:

(add-to-list 'load-path (directory-file-name
                         (or (file-name-directory #$) (car load-path))))


;;;### (autoloads nil "highlight-thing" "highlight-thing.el" (0 0
;;;;;;  0 0))
;;; Generated autoloads from highlight-thing.el

(autoload 'highlight-thing-mode "highlight-thing" "\
Minor mode that highlights things at point

If called interactively, enable Highlight-Thing mode if ARG is
positive, and disable it if ARG is zero or negative.  If called
from Lisp, also enable the mode if ARG is omitted or nil, and
toggle it if ARG is `toggle'; disable the mode otherwise.

\(fn &optional ARG)" t nil)

(put 'global-highlight-thing-mode 'globalized-minor-mode t)

(defvar global-highlight-thing-mode nil "\
Non-nil if Global Highlight-Thing mode is enabled.
See the `global-highlight-thing-mode' command
for a description of this minor mode.
Setting this variable directly does not take effect;
either customize it (see the info node `Easy Customization')
or call the function `global-highlight-thing-mode'.")

(custom-autoload 'global-highlight-thing-mode "highlight-thing" nil)

(autoload 'global-highlight-thing-mode "highlight-thing" "\
Toggle Highlight-Thing mode in all buffers.
With prefix ARG, enable Global Highlight-Thing mode if ARG is positive;
otherwise, disable it.  If called from Lisp, enable the mode if
ARG is omitted or nil.

Highlight-Thing mode is enabled in all buffers where
`highlight-thing-mode-maybe-activate' would do it.
See `highlight-thing-mode' for more information on Highlight-Thing mode.

\(fn &optional ARG)" t nil)

(if (fboundp 'register-definition-prefixes) (register-definition-prefixes "highlight-thing" '("highlight-thing-")))

;;;***

;;;### (autoloads nil nil ("highlight-thing-pkg.el") (0 0 0 0))

;;;***

;; Local Variables:
;; version-control: never
;; no-byte-compile: t
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; highlight-thing-autoloads.el ends here
