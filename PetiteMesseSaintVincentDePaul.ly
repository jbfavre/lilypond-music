\version "2.20.0"
\language "english"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%% Book definition
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%% Include common files
\include "libs/commonFunctions.ily"
\include "libs/translations/fr.ily"
\include "libs/layouts/book-titling.ily"

%%%%% First page
%#(set-global-staff-size 20)
\include "PetiteMesseSaintVincentDePaul/scorePaper.ily"
\header {
  title = \markup { \center-column { "Petite messe" "de" "Saint Vincent de Paul" } }
  subtitle = \markup { \center-column { "Pour soliste et chœur à 3 voix" "ou" "chœur à 4 voix" } }
  subsubtitle = "Petite messe de Saint Vincent de Paul"
  composer = "Jean Baptiste Favre"
  poet = "AELF"
  date = "Clichy la Garenne, 2020"
}

\pageBreak
\include "PetiteMesseSaintVincentDePaul/Kyrie.ily"
\score {
  \kyrieScore
  \header {
    piece = "Kyrie"
    tagline = ##f
  }
  \layout{
    #(layout-set-staff-size 17)
    system-count = 3
  }
}

%\pageBreak
%\include "PetiteMesseSaintVincentDePaul/Gloria.ily"
%\score {
%  \gloriaScore
%  \header {
%    piece = "Gloria"
%    tagline = ##f
%  }
%}

\pageBreak
\include "PetiteMesseSaintVincentDePaul/Alleluia.ily"
\score {
  \alleluiaScore
  \header {
    piece = "Alleluia"
    tagline = ##f
  }
  \layout {
    #(layout-set-staff-size 17)
    system-count = 3
  }
}

\pageBreak
\include "PetiteMesseSaintVincentDePaul/PriereUniverselle.ily"
\score {
  \puScore
  \header {
    piece = "Prière universelle"
    tagline = ##f
  }
  \layout{
    #(layout-set-staff-size 17)
    system-count = 3
  }
}

\pageBreak
\include "PetiteMesseSaintVincentDePaul/Sanctus.ily"
\score {
  \sanctusScore
  \header {
    piece = "Sanctus"
    tagline = ##f
  }
  \layout{
    #(layout-set-staff-size 17)
    system-count = 3
  }
}

\pageBreak
\include "PetiteMesseSaintVincentDePaul/Anamnese.ily"
\score {
  \anamneseScore
  \header {
    piece = "Anamnèse"
    tagline = ##f
  }
  \layout{
    #(layout-set-staff-size 17)
  }
}

\pageBreak
\include "PetiteMesseSaintVincentDePaul/Agnus.ily"
\score {
  \agnusScore
  \header {
    piece = "Agnus"
    tagline = ##f
  }
  \layout{
    #(layout-set-staff-size 17)
  }
}