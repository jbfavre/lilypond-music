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
\include "PetiteMesseSaintVincentDePaul/Agnus.ily"

\include "PetiteMesseSaintVincentDePaul/common-paper.ily"
\header {
  title = \markup { \column { \typewriter "Extrait de: " "Petite messe de Saint Vincent de Paul" } }
  piece = "Agnus"
  poetPrefix = \poetPrefix
  composerPrefix = \composerPrefix
  poet = "AELF"
  composer = "Jean Baptiste Favre"
  copyright = ""
  tagline = ""
}
\agnusScore
