;; 首先确保已经安装gopls
(require 'project)
(require 'eglot)

;;找到当前项目的go.mod
(defun project-find-go-module (dir)
  (when-let ((root (locate-dominating-file dir "go.mod")))
    (cons 'go-module root)))

(add-hook 'project-find-functions #'project-find-go-module)

(cl-defmethod project-root ((project (head go-module)))
  (cdr project))


;; 启用eglot
(add-hook 'go-mode-hook 'eglot-ensure)

;; 自动导入包
(add-hook 'before-save-hook
    (lambda ()
        (call-interactively 'eglot-code-action-organize-imports))
    nil t)

(setq-default eglot-workspace-configuration
    '((:gopls .
        ((staticcheck . t)
         (matcher . "CaseSensitive")))))

(provide 'conf-eglot-go)
