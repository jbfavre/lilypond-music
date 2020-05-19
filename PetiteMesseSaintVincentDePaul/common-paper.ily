    \paper {
      #(include-special-characters)
      % Should the last system expand to fill the line ?
      % Yes -> ##f
      % No  -> ##t
      ragged-last = ##f
      ragged-bottom = ##t
      ragged-last-bottom = ##f
      page-breaking = #ly:page-turn-breaking
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