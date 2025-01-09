(add-to-list 'load-path "~/.emacs.d/external")

(set-language-environment "utf-8")
(set-default-coding-systems 'utf-8-unix)
(set-keyboard-coding-system 'utf-8-unix)
(set-terminal-coding-system 'utf-8-unix)

(autoload 'markdown-mode "markdown-mode"
  "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist
	     '("\\.\\(?:md\\|markdown\\|mkd\\|mdown\\|mkdn\\|mdown\\|mdwn\\)\\'" . markdown-mode))

(autoload 'gfm-mode "markdown-mode"
  "Major mode for editing GitHub Flavored Markdown files" t)
(add-to-list 'auto-mode-alist '("README\\.md'" . gfm-mode))

(with-eval-after-load 'markdown-mode
  (define-key markdown-mode-map (kbd "C-c C-e") #'markdown-do))

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
 '(display-line-numbers-type 'relative)
 '(global-display-line-numbers-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "M+CodeLat60 Nerd Font" :foundry "UFDN" :slant normal :weight regular :height 128 :width expanded)))))

(add-hook 'python-mode-hook
	  (lambda ()
	    (setq-default python-indent-offset 2)))

(add-hook 'java-mode-hook
	  (lambda ()
	    (setq-default java-indent-offset 2)))

(message "init.el loaded successfully!")
