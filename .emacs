(load "/usr/share/emacs/23.1/site-lisp/haskell-mode/haskell-site-file")
(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
(add-hook 'haskell-mode-hook 'turn-on-haskell-decl-scan)
(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation 'linum-mode)
;;(add-hook 'haskell-mode-hook 'turn-on-haskell-indent)
;;(add-hook 'haskell-mode-hook 'turn-on-haskell-simple-indent)

(defun duplicate-line()
  (interactive)
  (move-beginning-of-line 1)
  (kill-line)
  (yank)
  (open-line 1)
  (next-line 1)
  (yank)
)
(global-set-key [C-M-down] 'duplicate-line)

;;window navigation M-\arrow keys\
(windmove-default-keybindings 'meta)

(global-set-key [(control tab)] 'previous-buffer)
(global-set-key [(control shift tab)] 'next-buffer)
(global-set-key [f4] 'revert-buffer)
(global-set-key [f5] 'call-last-kbd-macro) 
(global-set-key [f8] 'linum-mode) 
(global-set-key [f11] 'ibuffer)
(global-set-key [f10] 'bookmark-bmenu-list) 

;; y/n or yes/no
(fset 'yes-or-no-p 'y-or-n-p)

;;save session
(desktop-save-mode t)

;;auto-complite
;;(add-to-list 'load-path "d:/Program Files/emacs-23.2/site-lisp/")
;;(require 'auto-complete-config)
;;(add-to-list 'ac-dictionary-directories "d:/Program Files/emacs-23.2/site-lisp//ac-dict")
;;(ac-config-default)

;;haskell-autocomplete.el
;;(load "D:/Program Files/emacs-23.2/site-lisp/haskell-mode/haskell-autocomplete")