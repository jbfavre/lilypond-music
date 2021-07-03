\paper {

  #(define fonts
    (set-global-fonts
     #:music "emmentaler"
     #:brace "emmentaler"
     #:roman "Arial"
     #:sans "Cantarell thin"
    ))

  #(include-special-characters)

  top-markup-spacing = #'((basic-distance . 3)
     (minimum-distance . 3)
     (padding . 3)
     (stretchability . 3))

  markup-system-spacing = #'((basic-distance . 3)
     (minimum-distance . 3)
     (padding . 3)
     (stretchability . 3))

%{
  system-system-spacing = #'((basic-distance . 3)
     (minimum-distance . 3)
     (padding . 3)
     (stretchability . 3))
%}

  %two-sided = \twoSided
  %inner-margin = \innerMargin
  %outer-margin = \outerMargin

  min-systems-per-page = 4

  % Should the last system expand to fill the line ?
  % Yes -> ##f
  % No  -> ##t
  ragged-last = ##f
  ragged-bottom = ##t
  ragged-last-bottom = ##f
  tagline = ##f

  two-sided = ##t
  top-margin = 1.5\cm
  bottom-margin = 1.5\cm
  inner-margin = 2\cm
  outer-margin = 1\cm

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
  scoreTitleMarkup = \markup \columns {
    \fill-line {
      \column {
        \line {
          \left-column {
            \vspace #1.1
            \fontsize #7 \fromproperty #'header:piece
            \fontsize #1 \sans \fromproperty #'header:subsubtitle
          }
        }
      }
      \column {
        \vspace #0.5
        \fontsize #-2 \line {
          \left-column {
            \concat { \typewriter "Paroles&nbsp;:&nbsp;" \sans \fromproperty #'header:poet }
            \concat { \typewriter "Musique&nbsp;:&nbsp;" \sans \fromproperty #'header:composer }
            \typewriter \italic \fromproperty #'header:dedication
          }
        }
      }
    }
  }
}