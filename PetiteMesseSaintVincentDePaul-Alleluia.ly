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
\include "PetiteMesseSaintVincentDePaul/Alleluia.ily"

\include "PetiteMesseSaintVincentDePaul/scorePaper.ily"

\header {
  title = "Petite messe de Saint Vincent de Paul"
  piece = "Alleluia"
  composer = "Jean Baptiste Favre"
  poet = "AELF"
  opus = ##f
  copyright = \markup { \typewriter "Extrait de la Petite messe de Saint Vincent de Paul" }
}
\alleluiaScore
