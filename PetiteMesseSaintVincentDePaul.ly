\version "2.18.2"

\paper {
  paper-width = 21.0\cm
  paper-height = 29.7\cm
  left-margin = 2.5\cm
  right-margin = 2.5\cm
  top-margin = 2\cm
  bottom-margin = 2\cm
  max-systems-per-page = #4
  ragged-last = ##t
}

% Needed for unmeasured "gregorian like" pieces
\include "gregorian.ly"
"|" = \bar "||"
"`" = \divisioMinima

\include "book-titling.ily"

\book {
  \header {
    title = \markup {
      \center-column {
        "Petite messe"
        "Saint Vincent de Paul"
      }
    }
    subtitle = \markup {
      \center-column {
        "Pour soliste et chœur à 2 voix"
        ou
        "chœur à 3 voix"
      }
    }
    composer = "Jean Baptiste Favre"
    date = "2017"
    arrangement = \markup {
      \center-column {
        "Jean Baptiste Favre"
        "Olivier Bardot"
      }
    }
    copyright = "Reproduction interdite sans l'accord explicite de l'auteur"
  }
  \bookTitle "Petite messe Saint Vincent de Paul"
  \useRehearsalNumbers ##f

  \pageBreak
  \bookpart {
    \paper {
      bookTitleMarkup = \markup { \fill-line { \fontsize #10 \fromproperty #'header:piece } }
    }
    \include "PetiteMesseSaintVincentDePaul/Kyrie.ly"
  }
  \bookpart {
    \paper {
      bookTitleMarkup = \markup { \fill-line { \fontsize #10 \fromproperty #'header:piece } }
    }
    \include "PetiteMesseSaintVincentDePaul/Gloria.ly"
  }
  \bookpart {
    \paper {
      bookTitleMarkup = \markup { \fill-line { \fontsize #10 \fromproperty #'header:piece } }
    }
    \include "PetiteMesseSaintVincentDePaul/Sanctus.ly"
  }
  \bookpart {
    \paper {
      bookTitleMarkup = \markup { \fill-line { \fontsize #10 \fromproperty #'header:piece } }
    }
    \include "PetiteMesseSaintVincentDePaul/Agnus.ly"
  }

}
\layout {
  \context {
    \Score
      defaultBarType = "" 
  }
}