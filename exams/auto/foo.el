(TeX-add-style-hook
 "foo"
 (lambda ()
   (TeX-run-style-hooks
    "latex2e"
    "article"
    "art10"))
 :latex)

