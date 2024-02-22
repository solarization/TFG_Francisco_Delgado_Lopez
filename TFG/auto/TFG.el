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
    "capitulos/marcoteorico"
    "capitulos/estadoarte"
    "capitulos/ejemplos"
    "capitulos/resultados"
    "capitulos/conclusion"
    "capitulos/apendice"
    "memoir"
    "memoir10"
    "color"
    "listings")
   (LaTeX-add-bibliographies
    "bibliografia/bibliografia"))
 :latex)

