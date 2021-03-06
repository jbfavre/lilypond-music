\version "2.18.2"

%%%%% Include common files
\include "libs/commonFunctions.ily"
\include "libs/translations/fr.ily"
\include "libs/layouts/book-titling.ily"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%% Include each part of the Petite Messe de Saint Vincent de Paul
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\include "PetiteMesseSaintVincentDePaul/Kyrie.ily"

\include "PetiteMesseSaintVincentDePaul/scorePaper.ily"
\header {
  piece = "Kyrie"
  subsubtitle = "Petite messe de Saint Vincent de Paul"
  composer = "Jean Baptiste Favre"
  poet = "AELF"
  tagline = \markup { \typewriter "Extrait de la Petite messe de Saint Vincent de Paul" }
}
\kyrieScore
