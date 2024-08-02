(TeX-add-style-hook
 "TFG"
 (lambda ()
   (TeX-add-to-alist 'LaTeX-provided-class-options
                     '(("memoir" "twoside" "a4paper")))
   (TeX-run-style-hooks
    "latex2e"
    "preambulo"
    "capitulos/portada"
    "capitulos/licencia"
    "capitulos/evaluacion"
    "capitulos/agradecimientos"
    "capitulos/resumen"
    "capitulos/introduccion"
    "capitulos/estadoarte"
    "capitulos/marcoteorico"
    "capitulos/ejemplos"
    "capitulos/programación"
    "capitulos/apendice"
    "memoir"
    "memoir10"
    "color"
    "listings"))
 :latex)

