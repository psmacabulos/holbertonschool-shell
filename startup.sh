#!/bin/bash

# Git setup
git config --global user.name "psmacabulos"
git config --global user.email "patrick.macabulos@gmail.com"
git config --global credential.helper 'cache --timeout=21600'

# Custom shell prompt
export PS1='\[\e[1;35m\]\w\[\e[0m\] \$ '

# Emacs Betty style setup
cat > ~/.emacs << 'EOF'
;; -------------------------------
;; Betty Style Setup for C in Emacs
;; -------------------------------

(setq-default indent-tabs-mode t)
(setq-default tab-width 8)
(setq-default fill-column 80)

(require 'cc-mode)
(c-add-style
 "betty"
 '("bsd"
   (c-basic-offset . 8)
   (c-offsets-alist . ((substatement-open . 0)))))

(setq c-default-style "betty"
      c-basic-offset 8)

(require 'whitespace)
(setq whitespace-style '(face trailing tabs empty lines-tail))
(setq whitespace-line-column 80)
(global-whitespace-mode +1)

(defun my/betty-cleanup-buffer ()
  "Clean trailing whitespace for Betty style (tabs preserved)."
  (when (derived-mode-p 'c-mode 'c++-mode)
    (delete-trailing-whitespace)))
(add-hook 'before-save-hook #'my/betty-cleanup-buffer)

(add-hook 'c-mode-common-hook
          (lambda ()
            (c-set-style "betty")
            (setq-local indent-tabs-mode t)
            (setq-local tab-width 8)
            (setq-local c-basic-offset 8)
            (column-number-mode +1)))

(defun run-betty-linter ()
  "Run betty-style.sh on the current file after saving."
  (when (and (derived-mode-p 'c-mode)
             buffer-file-name
             (string-match "\\.c\\'" buffer-file-name))
    (shell-command (concat "betty-style.sh " buffer-file-name))))
(add-hook 'after-save-hook 'run-betty-linter)

(custom-set-faces
 '(whitespace-trailing ((t (:background "red1"))))
 '(whitespace-tab ((t (:background "gray20"))))
 '(whitespace-line ((t (:background "gray10")))))
EOF
