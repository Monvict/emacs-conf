(electric-pair-mode t)                       ; 自动大不全括号
(add-hook 'prog-mode-hook #'show-paren-mode) ; 编程模式下，光标在括号上时高亮另一个括号
(column-number-mode t)                       ; 在 Mode line 上显示列号
(global-auto-revert-mode t)                  ; 当另一程序修改了文件时，让 Emacs 及时刷新 Buffer
(delete-selection-mode t)                    ; 选中文本后输入文本会替换文本（更符合我们习惯了的其它编辑器的逻辑）
(setq inhibit-startup-message t)             ; 关闭启动 Emacs 时的欢迎界面
(setq make-backup-files nil)                 ; 关闭文件自动备份
(add-hook 'prog-mode-hook #'hs-minor-mode)   ; 编程模式下，可以折叠代码块
(global-display-line-numbers-mode 1)         ; 在 Window 显示行号
(tool-bar-mode -1)                           ; 关闭 Tool bar
(menu-bar-mode -1)                           ; 关闭 Menu bar
(display-time-mode 1)                        ;; 常显
(when (display-graphic-p) (toggle-scroll-bar -1)) ; 图形界面时关闭滚动条
(setq auto-save-default nil) ; 关闭自动保存
(load-theme 'manoj-dark t)
(global-company-mode 1) ; 开启全局补全模式
(set-language-environment "UTF-8")
;(add-to-list 'default-frame-alist '(fullscreen . maximized)) ;图形界面全屏

;; 启用相对行号
(global-display-line-numbers-mode t)
(setq display-line-numbers-type 'relative)

;; 设置选中文本的背景色为灰色
(set-face-background 'region "#707b7c")

(setq-default tab-width 4)        ;; 设置 tab 的宽度为 4 个空格
(setq-default indent-tabs-mode nil)  ;; 禁用 Tab 字符，改为使用空格


;;全局启用高亮当前行
(global-hl-line-mode 1)
;;设置高亮行的背景色为深灰色
(set-face-background 'hl-line "#333333")
;;保持文字颜色不变  
(set-face-foreground 'hl-line nil)

(provide 'conf-global)
