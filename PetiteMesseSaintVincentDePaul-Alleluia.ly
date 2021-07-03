\version "2.18.2"

%%%%% Include common files
\include "libs/commonFunctions.ily"
\include "libs/translations/fr.ily"
\include "libs/layouts/book-titling.ily"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%% Include each part of the Petite Messe de Saint Vincent de Paul
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\include "PetiteMesseSaintVincentDePaul/scorePaper.ily"
\include "PetiteMesseSaintVincentDePaul/Alleluia.ily"

\alleluiaHeader
#(set-global-staff-size 18)
\score {
  \alleluiaScore
}