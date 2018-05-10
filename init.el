(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

;; max window on start
(set-frame-parameter nil 'fullscreen 'fullboth)
 
(beacon-mode 1)

(set-face-attribute 'default nil :font "M+ 1m-17" )
(set-frame-font "M+ 1m-17" nil t)


(dolist (charset '(kana han symbol cjk-misc bopomofo))

  (set-fontset-font (frame-parameter nil 'font)charset

		    ;; (font-spec :family "WenQuanYi Micro Hei Mono" :Size 36)))
		    (font-spec :family "Source Han Sans CN" :Size 48)))

(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)

(setq linum-format "%4d \u2502 ")
(global-linum-mode 1)

(require 'doom-themes)

;; Global settings (defaults)
(setq doom-themes-enable-bold t    ; if nil, bold is universally disabled
      doom-themes-enable-italic t) ; if nil, italics is universally disabled

;; Load the theme (doom-one, doom-molokai, etc); keep in mind that each theme
;; may have their own settings.
;; (load-theme 'doom-nord t)
(load-theme 'doom-solarized-light t)

;; Enable flashing mode-line on errors
(doom-themes-visual-bell-config)

;; Enable custom neotree theme
(doom-themes-neotree-config)  ; all-the-icons fonts must be installed!

;; Corrects (and improves) org-mode's native fontification.
(doom-themes-org-config)


(require 'ido)
(ido-mode t)
(ido-everywhere t)

(require 'ido-completing-read+)
(ido-ubiquitous-mode 1)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("013c62a1fcee7c8988c831027b1c38ae215f99722911b69e570f21fc19cb662e" "891debfe489c769383717cc7d0020244a8d62ce6f076b2c42dd1465b7c94204d" default)))
 '(package-selected-packages
   (quote
    (htmlize doom-themes zoom ido-completing-read+ beacon org magit spaceline spaceline-all-the-icons hydra dumb-jump company helm counsel ivy swiper paradox)))
 '(paradox-github-token t)
 '(zoom-mode t nil (zoom))
 '(zoom-size (quote (0.618 . 0.618))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


(ivy-mode 1)
(setq ivy-use-virtual-buffers t)
(setq enable-recursive-minibuffers t)
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "<f6>") 'ivy-resume)
;(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)
(global-set-key (kbd "<f1> f") 'counsel-describe-function)
(global-set-key (kbd "<f1> v") 'counsel-describe-variable)
(global-set-key (kbd "<f1> l") 'counsel-find-library)
(global-set-key (kbd "<f2> i") 'counsel-info-lookup-symbol)
(global-set-key (kbd "<f2> u") 'counsel-unicode-char)
(global-set-key (kbd "C-c g") 'counsel-git)
(global-set-key (kbd "C-c j") 'counsel-git-grep)
(global-set-key (kbd "C-c k") 'counsel-ag)
(global-set-key (kbd "C-x l") 'counsel-locate)
(global-set-key (kbd "C-S-o") 'counsel-rhythmbox)
(define-key minibuffer-local-map (kbd "C-r") 'counsel-minibuffer-history)


(require 'paradox)
(paradox-enable)





(global-set-key (kbd "C-x +") 'zoom)

(require 'helm-config)
(helm-mode 1)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x r b") 'helm-filter-bookmarks)
(global-set-key (kbd "C-x C-f") 'helm-find-files)


(add-hook 'after-init-hook 'global-company-mode)

;; (dumb-jump-mode)
;; (defhydra dumb-jump-hydra (:color blue :columns 3)
;;     "Dumb Jump"
;;     ("j" dumb-jump-go "Go")
;;     ("o" dumb-jump-go-other-window "Other window")
;;     ("e" dumb-jump-go-prefer-external "Go external")
;;     ("x" dumb-jump-go-prefer-external-other-window "Go external other window")
;;     ("i" dumb-jump-go-prompt "Prompt")
;;     ("l" dumb-jump-quick-look "Quick look")
;;     ("b" dumb-jump-back "Back"))

(require 'spaceline-config)
(spaceline-spacemacs-theme)

(require 'spaceline-all-the-icons)
(spaceline-all-the-icons-theme)
