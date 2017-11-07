(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["black" "#d55e00" "#009e73" "#f8ec59" "#0072b2" "#cc79a7" "#56b4e9" "white"])
 '(custom-enabled-themes (quote (wheatgrass)))
 '(display-time-mode t)
 '(inhibit-startup-screen t)
 '(show-paren-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; 添加日期：7/22/2016
;; 设置的内容是刚刚进入emacs时候的初始化设置
;; 设置主模式为文本模式
(setq default-major-mode 'text-mode)
;; 设置自动换行模式
;;(add-hook 'text-mode-hook 'turn-on-auto-fill)

;; 7/25/2016
;; 不显示滚动条好看一些吧
(scroll-bar-mode 0)  
;; 不显示工具栏，这个应该是针对X界面的
(tool-bar-mode 0)

;; 8/4/2016 增加对org-mode的修改
;; 默认用 org-indent-mode 打开org 文件
;;(setq org-startup-indented t)

;; 9-24-2016
;; 默认使用 org-indent-mode 打开org文档
(setq org-startup-indented t)
;; 去掉了orgmode中的autofill，因为这样总会出现很多空格
;; (add-hook 'org-mode-hook 'turn-on-auto-fill)

;; Fri Oct 21 15:49:25 CST 2016
;; use " M-x now " to print current time
(defun now ()
(interactive)
( insert (current-time-string)))
;; M-x now

;; Mon Oct 31 20:26:33 2016
;; Add settings about org-mode
(setq org-todo-keywords
    '((sequence "REPORT(r@/!)" "BUG(b!)" "KNOWNCAUSE(k@/!)" "|" "FIXED(f!)")
      (sequence "TODO(t)" "START(s!)" "UPDATE(u@/!)"  "|" "DONE(d!)" "CANCELED(C@/!)")
     ))    
;; 以后任务管理的套路：说明内容都放在 update 中，Done 只记录时间。

;; Sat Nov 12 13:12:19 2016
;; Setting English Font 
;;(set-face-attribute
;; 'default nil :font "Monaco 14")
;; Chinese Font 配制中文字体
;;(dolist (charset '(kana han symbol cjk-misc bopomofo))
;;  (set-fontset-font (frame-parameter nil 'font)
;;                    charset
;;                   (font-spec :family "Microsoft YaHei" :size 14)))
;; Note: you can chang "Kaiti SC" to "Microsoft YaHei" or other fonts
;; 自动备份功能
(setq
backup-by-copying t ; 自动备份
backup-directory-alist
'(("." . ".")) ; 自动备份在目录 . 
delete-old-versions t ; 自动删除旧的备份文件
kept-new-versions 6 ; 保留最近的6个备份文件
kept-old-versions 2 ; 保留最早的2个备份文件
version-control t) ; 多次备份
;; auto-save 字符数
(setq  auto-save-interval 120)
