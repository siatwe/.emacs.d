;; Configure package.el to include MELPA.
;;(setq gnutls-algorithm-priority "NORMAL:-VERS-TLS1.3")
(require 'package)
(add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/"))
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)
(package-initialize)

;; Ensure that use-package is installed.
;;
;; If use-package isn't already installed, it's extremely likely that this is a
;; fresh installation! So we'll want to update the package repository and
;; install use-package before loading the literate configuration.
(when (not (package-installed-p 'use-package))
  (package-refresh-contents)
  (package-install 'use-package))

(org-babel-load-file "~/.emacs.d/Emacs.org")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(git-gutter:update-interval 2)
 '(org-agenda-files '("~/.org/people.org" "~/.org/todo.org"))
 '(package-selected-packages
   '(tree-sitter-langs git-gutter all-the-icons-ivy dired-k dired-git-info org-tree-slide yasnippet windower which-key web-mode visual-fill-column use-package undo-tree typescript-mode treemacs-projectile treemacs-evil scratch rainbow-delimiters php-mode php-cs-fixer pdf-tools org-evil org-bullets magit lsp-ui lsp-treemacs key-chord ivy-rich ivy-prescient hl-todo helpful general fzf flx expand-region evil-org evil-multiedit evil-matchit evil-leader evil-commentary evil-collection eshell-up eshell-did-you-mean emmet-mode dracula-theme doom-modeline disk-usage diff-hl counsel-projectile company browse-kill-ring bongo beacon auto-compile)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
