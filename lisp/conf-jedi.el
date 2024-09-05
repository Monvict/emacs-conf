;; Ensure eglot is loaded
(require 'eglot)

;; Define python-mode to use jedi-language-server
(add-to-list 'eglot-server-programs
             '(python-mode . ("jedi-language-server")))

;; Automatically start eglot in Python mode
(add-hook 'python-mode-hook 'eglot-ensure)

(provide 'conf-jedi)
