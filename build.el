;; Change time zone to UTC+8.
(setenv "TZ" "CST")

(require 'org)
(org-babel-do-load-languages 'org-babel-load-languages
                             '((shell . t)))
(setq org-confirm-babel-evaluate nil)

(require 'ox-hugo)

(with-temp-buffer
  (insert-file-contents "README.org")
  (org-babel-goto-named-src-block "build-project")
  (org-babel-execute-src-block))
