;; See http://www.ubuntuforums.org/showthread.php?t=183638
(modify-frame-parameters nil '((wait-for-wm . nil)))

;;modify load path
(setq load-path (cons (expand-file-name "~/.emacs.d") load-path))

;;Use font lock mode
(global-font-lock-mode)

(setq make-backup-files nil)

;;rational backspace behavior
(define-key global-map "\C-h" 'backward-delete-char)

;;useful key maps
(define-key global-map [f4] 'goto-line)
(define-key global-map [f5] 'revert-buffer)
(define-key global-map [f6] 'repeat)

;;debugger key-maps
;;(define-key global-map [f9] 'gud-step)
;;(define-key global-map [f10] 'gud-next)
;;(define-key global-map [f11] 'gud-finish)
;;(define-key global-map [f12] 'gud-cont)

;;No auto-fill-mode
(add-hook 'c++-mode-hook 'turn-off-auto-fill)
(add-hook 'c-mode-hook 'turn-off-auto-fill)
(add-hook 'text-mode-hook 'turn-off-auto-fill)
(add-hook 'sml-mode-hook 'turn-off-auto-fill)

;;Set tabs
(setq-default indent-tabs-mode nil)
(setq default-tab-width 4)

;; Show line-number in the mode line
(line-number-mode 1)

;; Show column-number in the mode line
(column-number-mode 1)

(if (functionp 'tool-bar-mode) (tool-bar-mode))
(if window-system
    (tool-bar-mode -1)
)

;;(set-default-font "-*-Courier 10 pitch-medium-r-*-*-*-120-100-100-*-*-*-*")

(setq custom-file "~/.emacs.d/custom.el")
(load custom-file)

;; (require 'maxframe)
;; (add-hook 'window-setup-hook 'maximize-frame t)

;; xmlindent
(fset 'xmlindent
   [?\C-u ?\M-| ?x ?m ?l ?i ?n ?d ?e ?n ?t ?  ?- return])
(define-key global-map [f7] 'xmlindent)

;; (add-hook 'server-switch-hook
;;           (lambda ()
;;             (when (current-local-map)
;;               (use-local-map (copy-keymap (current-local-map))))
;;             (when server-buffer-clients
;;               (local-set-key (kbd "C-x k") 'server-edit))))

(add-to-list 'auto-mode-alist '("\\.groovy$" . groovy-mode))
(autoload 'groovy-mode "groovy-mode" nil t)

(add-to-list 'auto-mode-alist '("\\.dot\\'" . graphviz-dot-mode))
(autoload 'graphviz-dot-mode "graphviz-dot-mode" nil t)
