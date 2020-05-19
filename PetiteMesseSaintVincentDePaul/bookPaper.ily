  \paper {
    #(define fonts
      (set-global-fonts
       #:music "emmentaler"
       #:brace "emmentaler"
       #:roman "Arial"
       #:sans "Cantarell thin"
      ))
    bookTitleMarkup = \markup \column {
      \fill-line { \fontsize #5 \fromproperty #'header:composer }
      \when-property #'header:date \fill-line { \combine \vspace #1.2 \fontsize #1 \sans \fromproperty #'header:date }
      \combine \null \vspace #12
      \fill-line { \postscript #"-40 0 moveto 80 0 rlineto stroke" }
      \combine \null \vspace #4
      \fill-line { \fontsize #10 \fromproperty #'header:title }
      \combine \null \vspace #1
      \fill-line { \postscript #"-10 0 moveto 20 0 rlineto stroke" }
      \vspace #1
      \fill-line { \when-property #'header:subtitle \fontsize #3 \sans \fromproperty #'header:subtitle }
      \vspace #1
      \fill-line { \postscript #"-40 0 moveto 80 0 rlineto stroke" }
    }
    scoreTitleMarkup = \markup \null
    top-margin = 1.5 \cm
    bottom-margin = 1.5 \cm
    left-margin = 2 \cm
    right-margin = 2 \cm
  }