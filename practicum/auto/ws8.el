(TeX-add-style-hook
 "ws8"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("article" "10pt")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("geometry" "left=0.9in" "right=0.9in" "top=0.9in" "bottom=0.9in")))
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "href")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-run-style-hooks
    "latex2e"
    "article"
    "art10"
    "geometry"
    "amsmath"
    "amssymb"
    "comment"
    "enumerate"
    "hyperref"
    "xcolor"
    "bm"
    "graphicx")
   (TeX-add-symbols
    "A"
    "B"
    "C"
    "P"
    "D"
    "T"
    "V"
    "U"
    "X"
    "Z"
    "c"
    "e"
    "x"
    "z"
    "v"
    "y"
    "w"
    "h"))
 :latex)

