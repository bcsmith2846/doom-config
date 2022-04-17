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

(setq doom-font (font-spec :family "Mazer" :size 15))
(setq doom-big-font (font-spec :family "Mazer" :size 22))
(setq doom-variable-pitch-font (font-spec :family "Mazer" :size 15))


(setq doom-theme 'doom-dracula)
(setq doom-themes-treemacs-theme "doom-dracula")
(setq doom-themes-enable-bold t
      doom-themes-enable-italic t)

(doom-themes-visual-bell-config)
(doom-themes-neotree-config)

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:

;; This is the location for storing secrets. It is GPG encrypted. Github toekns go here
(setq auth-sources '("~/.authinfo.gpg"))

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)

;; Delay for spellcheck to run after recent changes
(after! spell-fu
  (setq spell-fu-idle-delay 0.5))  ; default is 0.25

;; Add mode to editorconfig
;;(after! editorconfig)
;;  (add-to-list 'editorconfig-indentation-alist '(coffee-mode coffee-tab-width)))


(projectile-add-known-project "~/projects/efi_polling_agent")
(projectile-add-known-project "~/projects/poller")
(projectile-add-known-project "~/projects/go/src/github.com/bcsmith2846/goping")

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
