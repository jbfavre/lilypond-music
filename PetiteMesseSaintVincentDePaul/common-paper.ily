    \paper {
      #(include-special-characters)
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
              \pieceExtract
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