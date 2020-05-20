\version "2.20.0"
\language "english"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%% Book definition
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%%%% Include common files
\include "libs/commonFunctions.ily"
\include "libs/settings.ily"
\include "libs/translations/fr.ily"
\include "libs/layouts/book-titling.ily"
\include "PetiteMesseSaintVincentDePaul/pianoSettings.ily"

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%% Include each part of the Petite Messe de Saint Vincent de Paul
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\include "PetiteMesseSaintVincentDePaul/Kyrie.ily"
\include "PetiteMesseSaintVincentDePaul/Alleluia.ily"
\include "PetiteMesseSaintVincentDePaul/Gloria.ily"
\include "PetiteMesseSaintVincentDePaul/PriereUniverselle.ily"
\include "PetiteMesseSaintVincentDePaul/Sanctus.ily"
\include "PetiteMesseSaintVincentDePaul/Anamnèse.ily"
\include "PetiteMesseSaintVincentDePaul/Agnus.ily"

%%%%% Define book
\book {
  \include "PetiteMesseSaintVincentDePaul/bookPaper.ily"
  \header {
    title = \markup { \center-column { "Petite messe" "de" "Saint Vincent de Paul" } }
    subtitle = \markup { \center-column { "Pour soliste et chœur à 3 voix" "ou" "chœur à 4 voix" } }
    composer = "Jean Baptiste Favre"
    poet = "AELF"
    date = "Clichy-la-Garenne, 2020"
  }

  \pageBreak % Ensure first page is blank for cover display

  \bookpart {
    \kyrieScore
    \include "PetiteMesseSaintVincentDePaul/scorePaper.ily"
    \header {
      piece = "Kyrie"
      title = ##f
      copyright = ##f
    }
  }
  \bookpart {
    \alleluiaScore
    \include "PetiteMesseSaintVincentDePaul/scorePaper.ily"
    \header {
      piece = "Alleluia"
      title = ##f
      copyright = ##f
    }
  }
%  \bookpart {
%    \include "PetiteMesseSaintVincentDePaul/scorePaper.ily"
%    \header {
%      title = ##f
%      piece = "Gloria"
%      subtitle = "Petite messe de Saint Vincent de Paul"
%      poetPrefix = \poetPrefix
%      composerPrefix = \composerPrefix
%      poet = "AELF"
%      copyright = ##f
%    }
%    \gloriaScore
%  }
  \bookpart {
    \include "PetiteMesseSaintVincentDePaul/scorePaper.ily"
    \header {
      piece = "Prière universelle"
      poet = "AELF"
      title = ##f
      copyright = ##f
    }
    \puScore
  }
  \bookpart {
    \include "PetiteMesseSaintVincentDePaul/scorePaper.ily"
    \header {
      piece = "Anamnèse"
      poet = "AELF"
      title = ##f
      copyright = ##f
    }
    \anamneseScore
  }
  \bookpart {
    \include "PetiteMesseSaintVincentDePaul/scorePaper.ily"
    \header {
      piece = "Sanctus"
      poet = "AELF"
      title = ##f
      copyright = ##f
    }
    \sanctusScore
  }
  \bookpart {
    \include "PetiteMesseSaintVincentDePaul/scorePaper.ily"
    \header {
      piece = "Agnus"
      poet = "AELF"
      title = ##f
      copyright = ##f
    }
    \agnusScore
  }
}