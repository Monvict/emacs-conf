;(use-package tree-sitter
 ; :ensure t
  ;:hook ((python-mode . tree-sitter-mode)
   ;      (c-mode . tree-sitter-mode)
    ;     (js-mode . tree-sitter-mode)
     ;    (ruby-mode . tree-sitter-mode))
;  :config
 ; (use-package tree-sitter-langs
  ;  :ensure t
   ; :after tree-sitter))


;; 确保已经安装了 tree-sitter 和 tree-sitter-langs
(use-package tree-sitter
  :ensure t
  :config
  (global-tree-sitter-mode))

(use-package tree-sitter-langs
  :ensure t
  :after tree-sitter)

(add-hook 'go-mode-hook #'tree-sitter-hl-mode)
(add-hook 'python-mode-hook #'tree-sitter-hl-mode)
(add-hook 'js-mode-hook #'tree-sitter-hl-mode)
(add-hook 'rust-mode-hook #'tree-sitter-hl-mode)

;; 可选：使用 tree-sitter 进行缩进（如果支持的话）
(setq tree-sitter-indent-enable t)

(provide 'conf-tree-sitter)
