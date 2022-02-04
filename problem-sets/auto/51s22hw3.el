(TeX-add-style-hook
 "51s22hw3"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("amsart" "12pt")))
   (TeX-add-to-alist 'LaTeX-provided-package-options
                     '(("geometry" "margin=1in")))
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "path")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "url")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "nolinkurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperbaseurl")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperimage")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "hyperref")
   (add-to-list 'LaTeX-verbatim-macros-with-braces-local "href")
   (add-to-list 'LaTeX-verbatim-macros-with-delims-local "path")
   (TeX-run-style-hooks
    "latex2e"
    "xy"
    "amsart"
    "amsart12"
    "amssymb"
    "amsmath"
    "amsthm"
    "epstopdf"
    "nicefrac"
    "enumerate"
    "hyperref"
    "color"
    "graphicx"
    "multicol"
    "mathtools"
    "geometry"
    "palatino"
    "mathpazo"
    "tikz")
   (TeX-add-symbols
    '("tred" 1)
    "ds"
    "sop"
    "eop"
    "F"
    "wtF"
    "wF"
    "G"
    "g"
    "D"
    "wL"
    "e"
    "eF"
    "eU"
    "eFU"
    "eTU"
    "ve"
    "adj"
    "dF"
    "dFU"
    "dTU"
    "dT"
    "kF"
    "kL"
    "lF"
    "lU"
    "rp"
    "rt"
    "rF"
    "cBF"
    "cGF"
    "cRF"
    "cNF"
    "GF"
    "PF"
    "wtPF"
    "PR"
    "wtdF"
    "dM"
    "eM"
    "wtdp"
    "wtgp"
    "wtxp"
    "wtzp"
    "wtyp"
    "whup"
    "whvp"
    "whwp"
    "vzpj"
    "vzpk"
    "vwpj"
    "vwpk"
    "vop"
    "vopj"
    "vopk"
    "whrho"
    "whrhop"
    "wtrho"
    "wtl"
    "whl"
    "whphi"
    "wtrhop"
    "whvarp"
    "wtvarp"
    "wtPhi"
    "oo"
    "who"
    "whpsi"
    "wtd"
    "wte"
    "wtf"
    "wtg"
    "wth"
    "wtq"
    "wtu"
    "wtv"
    "wtw"
    "wtx"
    "wtz"
    "wty"
    "wtB"
    "wtD"
    "wtK"
    "wtL"
    "wtM"
    "wtN"
    "wtR"
    "wtS"
    "wtT"
    "wtU"
    "wtV"
    "wtX"
    "wtomega"
    "wtpi"
    "wtnu"
    "wtiota"
    "wttau"
    "wtvp"
    "wtgamma"
    "wtlambda"
    "wtLambda"
    "wtDelta"
    "wtGamma"
    "wtPsi"
    "wtsigma"
    "wtxi"
    "wtXi"
    "wtcN"
    "wtcP"
    "wtfN"
    "wtfT"
    "wtfU"
    "wtfS"
    "wtcM"
    "wtexp"
    "wtphi"
    "wtpsi"
    "whd"
    "whe"
    "whf"
    "whp"
    "whu"
    "whv"
    "whw"
    "whK"
    "whL"
    "whN"
    "whU"
    "whV"
    "whcN"
    "whcP"
    "whcX"
    "whcZ"
    "whXi"
    "wtwhXi"
    "whdelta"
    "whmu"
    "vl"
    "oU"
    "oV"
    "oW"
    "bA"
    "bB"
    "bC"
    "bE"
    "bQ"
    "bU"
    "bV"
    "bW"
    "bX"
    "bY"
    "bZ"
    "mB"
    "mC"
    "mD"
    "mE"
    "mF"
    "mG"
    "mK"
    "mN"
    "mQ"
    "mR"
    "mS"
    "mT"
    "mV"
    "mZ"
    "cA"
    "cB"
    "cC"
    "cD"
    "cE"
    "cG"
    "cH"
    "cI"
    "cJ"
    "cK"
    "cL"
    "cM"
    "cN"
    "cO"
    "cP"
    "cQ"
    "cS"
    "cT"
    "cU"
    "cV"
    "cW"
    "cX"
    "cZ"
    "fA"
    "fB"
    "fC"
    "fD"
    "fG"
    "fH"
    "fK"
    "fL"
    "fM"
    "fN"
    "fO"
    "fP"
    "fQ"
    "fS"
    "fT"
    "fU"
    "fV"
    "fX"
    "fY"
    "fZ"
    "bu"
    "bv"
    "bw"
    "ba"
    "bb"
    "bh"
    "bx"
    "bo"
    "bp"
    "br"
    "bF"
    "bn"
    "bT"
    "bk"
    "ga"
    "gb"
    "gc"
    "bs"
    "vp")
   (LaTeX-add-amsthm-newtheorems
    "theorem"
    "thm"
    "conj"
    "cor"
    "definition"
    "defn"
    "ex"
    "hyp"
    "lemma"
    "prob"
    "prop"
    "quest"
    "remark"
    "const"))
 :latex)

