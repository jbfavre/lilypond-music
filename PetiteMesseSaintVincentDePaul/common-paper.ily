    \paper {
      #(include-special-characters)
      top-margin = 1\cm
      bottom-margin = 1\cm
      % Should the last system expand to fill the line ?
      % Yes -> ##f
      % No  -> ##t
      ragged-last = ##f
      ragged-bottom = ##f
      ragged-last-bottom = ##f
      bookTitleMarkup = \markup \null
      scoreTitleMarkup = \markup {
        \column {
          \vspace #0.5
          \fill-line {
            \column {
              \fontsize #6 \bold \fromproperty #'header:piece
              \fromproperty #'header:title
            }
            \right-column {
              \fontsize #1 \fromproperty #'header:composer
              \fontsize #0.8 \sans \fromproperty #'header:opus
            }
          }
          \vspace #1
        }
      }
    }