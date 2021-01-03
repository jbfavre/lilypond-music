\version "2.18.2"

%%%%% Include common files
\include "libs/commonFunctions.ily"
\include "libs/settings.ily"
\include "libs/translations/fr.ily"
\include "libs/layouts/book-titling.ily"
\include "PetiteMesseSaintVincentDePaul/pianoSettings.ily"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%% Include each part of the Petite Messe de Saint Vincent de Paul
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\include "PetiteMesseSaintVincentDePaul/scorePaper.ily"
\include "PetiteMesseSaintVincentDePaul/GloireADieu.ily"

\gloriaHeader
\score {
  \gloriaScore
  \layout {
    short-indent = 0.8\cm
    \context {
        \Staff
        \RemoveEmptyStaves
        \override NoteHead #'style = #'altdefault
        \override InstrumentName #'font-name = #"Monospace Regular"
    }
    \context {
        \Score
        \omit BarNumber
    }
    \context {
        \Voice
        \consists "Horizontal_bracket_engraver"
    }
    \override LyricText #'font-family = #'sans
    \override Score.RehearsalMark.font-family = #'typewriter
  }
}
