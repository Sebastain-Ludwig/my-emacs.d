(require 'highlight-thing)
(setq highlight-thing-what-thing 'word)
(setq highlight-thing-delay-seconds 0)
(setq highlight-thing-case-sensitive-p nil)
(setq-default highlight-thing-exclude-thing-under-point t)
(set-face-attribute 'highlight-thing nil
                    :background "#696969"
                    :foreground "black")
