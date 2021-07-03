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
\paper {
  \include "PetiteMesseSaintVincentDePaul/scorePaper.ily"
  #(define fonts
    (set-global-fonts
      #:music "emmentaler"
      #:brace "emmentaler"
      #:roman "Latin Modern Roman"
      #:sans "Latin Modern Sans"
      #:typewriter "Monospace Regular"
      #:factor (/ staff-height pt 20)
  ))
}
\header {
  title = \markup { \center-column { "Petite messe" "de" "Saint Vincent de Paul" } }
  subtitle = \markup { \center-column { "Pour soliste et chœur à 3 voix" "ou" "chœur à 4 voix" } }
  subsubtitle = "Petite messe de Saint Vincent de Paul"
  composer = "Jean Baptiste Favre"
  poet = "AELF"
  date = "Clichy la Garenne, 2020"
}

\pageBreak % Ensure first page is blank for cover display
\paper {
  \include "PetiteMesseSaintVincentDePaul/scorePaper.ily"
}
\include "PetiteMesseSaintVincentDePaul/Kyrie.ily"
\score {
  \kyrieScore
  \header {
    piece = "Kyrie"
    tagline = ##f
  }
}

%\pageBreak % Ensure first page is blank for cover display
%\include "PetiteMesseSaintVincentDePaul/Gloria.ily"
%\score {
%  \gloriaScore
%  \header {
%    title = ##f
%    piece = "Gloria"
%    subtitle = "Petite messe de Saint Vincent de Paul"
%    poetPrefix = \poetPrefix
%    composerPrefix = \composerPrefix
%    poet = "AELF"
%    copyright = ##f
%  }
%}

\pageBreak % Ensure first page is blank for cover display
\include "PetiteMesseSaintVincentDePaul/Alleluia.ily"
\score {
  \alleluiaScore
  \header {
    piece = "Alleluia"
    tagline = ##f
  }
}

\pageBreak % Ensure first page is blank for cover display
\include "PetiteMesseSaintVincentDePaul/PriereUniverselle.ily"
\score {
  \puScore
  \header {
    piece = "Prière universelle"
    tagline = ##f
  }
}

\pageBreak % Ensure first page is blank for cover display
\include "PetiteMesseSaintVincentDePaul/Anamnese.ily"
\score {
  \anamneseScore
  \header {
    piece = "Anamnèse"
    tagline = ##f
  }
}

\pageBreak % Ensure first page is blank for cover display
\include "PetiteMesseSaintVincentDePaul/Sanctus.ily"
\score {
  \sanctusScore
  \header {
    piece = "Sanctus"
    tagline = ##f
  }
}

\pageBreak % Ensure first page is blank for cover display
\include "PetiteMesseSaintVincentDePaul/Agnus.ily"
\score {
  \agnusScore
  \header {
    piece = "Agnus"
    tagline = ##f
  }
}