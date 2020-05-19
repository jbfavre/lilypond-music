\version "2.18.2"

%%%%% Include common files
\include "libs/commonFunctions.ily"
\include "libs/settings.ily"
\include "libs/translations/fr.ily"
\include "libs/layouts/book-titling.ily"
\include "PetiteMesseSaintVincentDePaul/pianoSettings.ily"

\include "PetiteMesseSaintVincentDePaul/Agnus.ily"

\include "PetiteMesseSaintVincentDePaul/scorePaper.ily"

\header {
  title = "Petite messe de Saint Vincent de Paul"
  piece = "Agnus"
  composer = "Jean Baptiste Favre"
  poet = "AELF"
  opus = ##f
  copyright = \markup { \typewriter "Extrait de la Petite messe de Saint Vincent de Paul" }
}
\agnusScore