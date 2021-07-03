\version "2.18.2"

%%%%% Include common files
\include "libs/commonFunctions.ily"
\include "libs/translations/fr.ily"
\include "libs/layouts/book-titling.ily"

\include "PetiteMesseSaintVincentDePaul/Agnus.ily"

\include "PetiteMesseSaintVincentDePaul/scorePaper.ily"
\header {
  piece = "Agnus"
  subsubtitle = "Petite messe de Saint Vincent de Paul"
  composer = "Jean Baptiste Favre"
  poet = "AELF"
  opus = ##f
  tagline = \markup { \typewriter "Extrait de la Petite messe de Saint Vincent de Paul" }
}
#(set-global-staff-size 18)
\agnusScore