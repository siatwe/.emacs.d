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

(org-babel-load-file "~/.emacs.d/configuration.org")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(fzf org-evil visual-fill-column bongo pdf-tools tablist disk-usage rainbow-delimiters browse-kill-ring scratch windower expand-region eshell-did-you-mean eshell-up web-mode beacon which-key org-bullets hl-todo php-cs-fixer php-mode dracula-theme doom-modeline counsel-projectile projectile all-the-icons yasnippet lsp-treemacs treemacs-evil treemacs lsp-ui lsp-mode company helpful ivy-prescient flx counsel ivy-rich ivy emmet-mode magit diff-hl key-chord undo-tree evil-commentary evil-multiedit evil-matchit evil-leader evil-org evil-collection evil auto-compile use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
