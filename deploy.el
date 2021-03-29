(require 'org)
(org-babel-do-load-languages 'org-babel-load-languages
                             '((shell . t)))
(setq org-confirm-babel-evaluate nil)

(require 'ox-hugo)

(with-temp-buffer
  (insert-file-contents "README.org")
  (org-babel-goto-named-src-block "publish-github-pages")
  (org-babel-execute-src-block))
