(set-language-environment "utf-8")
(set-default-coding-systems 'utf-8-unix)
(set-keyboard-coding-system 'utf-8-unix)
(set-terminal-coding-system 'utf-8-unix)

(setq inhibit-startup-screen t)

(push '(tool-bar-lines . 0) default-frame-alist)
(push '(background-color . "honeydew") default-frame-alist)

(global-display-line-numbers-mode)
(setq display-line-numbers-type 'relative)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Cousine Nerd Font Mono" :foundry "nil" :slant normal :weight regular :height 120 :width normal)))))

(add-hook 'python-mode-hook
	  (lambda ()
	    (setq python-indent-offset 2)))

(add-hook 'java-mode-hook
	  (lambda ()
	    (setq java-indent-offset 2)))

