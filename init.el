(require 'package)
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(package-initialize)

(When (memq window-system '(mac ns x))
      (exec-path-from-shell-initialize))

;(beacon-mode 1)

;(set-face-attribute 'default nil :font "M+ 1m-15" )
;(set-frame-font "M+ 1m-15" nil t)


(dolist (charset '(kana han symbol cjk-misc bopomofo))

  (set-fontset-font (frame-parameter nil 'font)charset

		    ;; (font-spec :family "WenQuanYi Micro Hei Mono" :Size 36)))
		    (font-spec :family "Source Han Sans CN" :Size 48)))

(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)

(setq linum-format "%4d \u2502 ")
(global-linum-mode 1)

(require 'ido)
(ido-mode t)
(ido-everywhere t)

;(require 'ido-completing-read+)
;(ido-ubiquitous-mode 1)

(global-set-key (kbd "C-x +") 'zoom)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (org magit spaceline spaceline-all-the-icons hydra dumb-jump company helm counsel ivy swiper paradox)))
 '(paradox-github-token t))
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
