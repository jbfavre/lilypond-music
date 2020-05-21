  \paper {
    ragged-last = ##f
    ragged-bottom = ##t
    ragged-last-bottom = ##f
    bookTitleMarkup = \markup \null
    scoreTitleMarkup = \markup {
      \column {
        \vspace #0.5
        \fill-line {
          \column {
            \fontsize #6 \bold \fromproperty #'header:piece
            \when-property #'header:subsubtitle \fromproperty #'header:subsubtitle
          }
          \right-column {
            \line { \when-property #'header:poet \typewriter "Texte: " \fontsize #1 \fromproperty #'header:poet }
            \line { \when-property #'header:composer \typewriter "Musique: " \fontsize #1 \fromproperty #'header:composer }
            \when-property #'header:opus \fontsize #0.8 \sans \fromproperty #'header:opus
          }
        }
        \vspace #0.5
      }
    }
  }