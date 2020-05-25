  \paper {
    #(include-special-characters)
    #(define fonts
      (set-global-fonts
       #:music "emmentaler"
       #:brace "emmentaler"
       #:roman "Arial"
       #:sans "Cantarell"
      ))
    % Should the last system expand to fill the line ?
    % Yes -> ##f
    % No  -> ##t
    ragged-last = ##f
    ragged-bottom = ##t
    ragged-last-bottom = ##f
    min-systems-per-page = 3
    tagline = ##f
    bookTitleMarkup = \markup \null
    scoreTitleMarkup = \markup {
      \column {
        \vspace #0.5
        \fill-line {
          \column {
            \fontsize #6 \bold \fromproperty #'header:piece
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