(add-to-list 'load-path' "~/.emacs.d/")

(global-set-key "\C-x\C-g" 'goto-line)

(autoload 'js2-mode "js2" nil t)
(load "~/.emacs.d/haskell-mode/haskell-site-file")
(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
(add-hook 'haskell-mode-hook 'turn-on-haskell-indentation)
(require 'go-mode)
(require 'python-mode)
(require 'ruby-mode)
(require 'markdown-mode)
(require 'coffee-mode)
(require 'yaml-mode)
(require 'haml-mode)
(require 'css-mode)
(require 'sass-mode)

(add-to-list 'auto-mode-alist '("zshrc" . sh-mode))
(add-to-list 'auto-mode-alist '("\\.sass$'" . sass-mode))
(add-to-list 'auto-mode-alist '("\\.hs$'" . haskell-mode))
(add-to-list 'auto-mode-alist '("\\.emacs$'" . emacs-mode))
(add-to-list 'auto-mode-alist '("\\.js$'" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.go$'" . go-mode))
(add-to-list 'auto-mode-alist '("\\.json$'" . js2-mode))
(add-to-list 'auto-mode-alist '("\\.module$'" . php-mode))
(add-to-list 'auto-mode-alist '("\\.install$'" . php-mode))
(add-to-list 'auto-mode-alist '("\\.py$'" . python-mode))
(add-to-list 'auto-mode-alist '("\\.rb$'" . ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.gemspec$'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.md$'" . markdown-mode))
(add-to-list 'auto-mode-alist '("\\.coffee$'" . coffee-mode))
(add-to-list 'auto-mode-alist '("\\.coffee.erb$'" . coffee-mode))
(add-to-list 'auto-mode-alist '("\\.yml$'" . yaml-mode))
(add-to-list 'auto-mode-alist '("\\.yaml$'" . yaml-mode))
(add-to-list 'auto-mode-alist '("\\.haml$'" . haml-mode))
(add-to-list 'auto-mode-alist '("\\.hamlc$'" . haml-mode))
(add-to-list 'auto-mode-alist '("\\.css$'" . css-mode))
(add-to-list 'auto-mode-alist '("Makefile" . makefile-mode))

(global-hi-lock-mode 1)
(global-font-lock-mode t)
(global-set-key [kp-delete] 'delete-char)
(transient-mark-mode t)

(setq-default truncate-partial-width-windows nil)
;; yaml mode auto-indent:
(add-hook 'yaml-mode-hook '(lambda () (define-key yaml-mode-map "\C-m" 'newline-and-indent)))


;; TRAMP
(require 'tramp)
(setq tramp-default-method "scp")
(setq make-backup-files         nil) ;backup files break hardlinks

;; transparent - emacs

;;-----------------The Indentation Engine--------------------------------;;
;; Here's a sample .emacs file that might help you along the way.  Just
;; copy this region and paste it into your .emacs file.  You may want to
;; change some of the actual values.

(defconst my-c-style
  '((c-tab-always-indent           . t)
    (c-comment-only-line-offset    . 0)
    (c-hanging-braces-alist        . ((substatement-open after)
                                      (brace-list-open)))
    (c-hanging-colons-alist        . ((member-init-intro before)
                                      (inher-intro)
                                      (case-label after)
                                      (label after)
                                      (access-label after)))
    (c-cleanup-list                . (scope-operator
                                      empty-defun-braces
                                      defun-close-semi))
    (c-offsets-alist               . ((arglist-close     . c-lineup-arglist)
                                      (substatement-open . 0)
                                      (case-label        . 0)
                                      (block-open        . 0)
                                      (knr-argdecl-intro . -)))
    (c-echo-syntactic-information-p . t)
    )
  "My C Programming Style")

(setq-default indent-tabs-mode nil)

(set-background-color "black")
(set-foreground-color "white")
(set-cursor-color "yellow")

(setq c-mode-hook
      (function (lambda ()
          (setq indent-tabs-mode nil)
          (setq c-indent-level 4))))
(setq php-mode-hook
      (function (lambda ()
          (setq indent-tabs-mode nil)
          (setq c-indent-level 4))))

(setq js2-mode-hook
      (function (lambda ()
          (setq indent-tabs-mode nil)
          (setq c-indent-level 2))))

(setq coffee-mode-hook
      (function (lambda ()
          (setq indent-tabs-mode nil)
          (setq coffee-indent-level 2))))


(set-default-font "-misc-fixed-medium-r-normal--13-*-*-*-c-70-iso8859-1")

(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )

;; Put autosave files (ie #foo#) and backup files (ie foo~) in ~/.emacs.d/.
(custom-set-variables
  '(auto-save-file-name-transforms '((".*" "~/.emacs.d/autosaves/\\1" t)))
  '(backup-directory-alist '((".*" . "~/.emacs.d/backups/"))))

;; create the autosave dir if necessary, since emacs won't.
(make-directory "~/.emacs.d/autosaves/" t)