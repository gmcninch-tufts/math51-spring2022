(TeX-add-style-hook
 "51s22ws3-adapted"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "12pt")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("geometry" "margin=.9in")))
   (TeX-run-style-hooks
    "latex2e"
    "article"
    "art12"
    "amsmath"
    "amssymb"
    "amscd"
    "geometry"
    "palatino"
    "mathpazo"
    "color")
   (TeX-add-symbols
    '("tred" 1)))
 :latex)

