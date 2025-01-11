;; 自定义两个函数
; Faster move cursor
(defun next-ten-lines()
  "Move cursor to next 20 lines."
  (interactive)
  (next-line 20))

(defun previous-ten-lines()
   "Move cursor to previous 20 lines."
   (interactive)
   (previous-line 20))
;; 绑定到快捷键
(global-set-key (kbd "M-n") 'next-ten-lines)            ; 光标向下移动 10 行
(global-set-key (kbd "M-p") 'previous-ten-lines)        ; 光标向上移动 10 行


;; 复制一行的快捷键
(defun duplicate-line()
  (interactive)
  (move-beginning-of-line 1)
  (kill-line)
  (yank)
  (open-line 1)
  (next-line 1)
  (yank)
  )
(global-set-key (kbd "M-d") 'duplicate-line)

(defun move-line-up ()
  "Move the current line up."
  (interactive)
  (transpose-lines 1)
  (forward-line -2))

(defun move-line-down ()
  "Move the current line down."
  (interactive)
  (forward-line 1)
  (transpose-lines 1)
  (forward-line -1))

(global-set-key (kbd "C-M-p") 'move-line-up)   ; 绑定向上移动
(global-set-key (kbd "C-M-n") 'move-line-down) ; 绑定向下移动

(provide 'conf-key-bind)
