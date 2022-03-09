;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "Brenden Smith"
      user-mail-address "brenden@brendensmith.net")

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
;; (setq doom-font (font-spec :family "monospace" :size 12 :weight 'semi-light)
;;       doom-variable-pitch-font (font-spec :family "sans" :size 13))

(setq doom-font (font-spec :family "SauceCodePro Nerd Font" :size 14))


(setq doom-theme 'doom-dracula)
(setq doom-themes-treemacs-theme "doom-dracula")
(setq doom-themes-enable-bold t
      doom-themes-enable-italic t)

(doom-themes-visual-bell-config)
(doom-themes-neotree-config)
(doom-themes-treemacs-config)
(doom-themes-org-config)

(setq +treemacs-git-mode "deferred")

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/notes/")

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)

;; Delay for spellcheck to run after recent changes
(after! spell-fu
  (setq spell-fu-idle-delay 0.5))  ; default is 0.25

;; Change docker starting opts
(setq docker-image-run-arguments '("-i" "-t" "--rm"))

;; Add mode to editorconfig
;;(after! editorconfig)
;;  (add-to-list 'editorconfig-indentation-alist '(coffee-mode coffee-tab-width)))

(setq org-roam-directory "~/notes/roam")
(org-roam-db-autosync-mode)


;; in $DOOMDIR/config.el
(after! rustic
  (setq rustic-lsp-server 'rust-analyzer))


(custom-set-faces!
  '(aw-leading-char-face
    :foreground "white" :background "red"
    :weight bold :height 2.5 :box (:line-width 10 :color "red")))



(setq org-brain-path "~/notes/brain")

(projectile-add-known-project "~/projects/efi-inventory-scan-py")
(projectile-add-known-project "~/projects/slack-export")
(projectile-add-known-project "~/projects/efi-inventory-scan")
(projectile-add-known-project "~/projects/python/stubs")
(projectile-add-known-project "~/bec/scripts")

;; TODO
;; Haskell formatter
;;(after!
;;  (setq lsp-haskell-formatting-provider "brittany"))

;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.
(use-package! lsp-pyright
  :config
  (setq lsp-pyright-stub-path "/home/brenden/projects/python/stubs"))