    \paper {
      bookTitleMarkup = \markup \columns {
        \fill-line {
            \column {
              \line {
                \right-column {
                  \fontsize #7 \sans \fromproperty #'header:piece
                  \fontsize #0 \typewriter \fromproperty #'header:subtitle
                }
              }
            }
            \column {
              \line {
                \left-column {
                  \line { \fontsize #-2 \concat { \typewriter \fromproperty #'header:poetPrefix \sans \fromproperty #'header:poet \bold " " } }
                  \line { \fontsize #-2 \concat { \typewriter \fromproperty #'header:composerPrefix \sans \fromproperty #'header:composer \bold " " } }
                  " "
                  \typewriter \italic \fromproperty #'header:dedication
                }
              }
            }
          }
      }
    }

