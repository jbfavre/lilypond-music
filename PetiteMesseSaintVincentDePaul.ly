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
\include "PetiteMesseSaintVincentDePaul/PrièreUniverselle.ily"
\include "PetiteMesseSaintVincentDePaul/Sanctus.ily"
\include "PetiteMesseSaintVincentDePaul/Anamnèse.ily"
\include "PetiteMesseSaintVincentDePaul/Agnus.ily"

blankPage = {
    % Hide Staff, Key & Time signature symbols to get a blank page
    \once \override Staff.StaffSymbol #'stencil = ##f
    \once \override Staff.Clef #'transparent = ##t
    \once \override Staff.TimeSignature #'stencil = ##f
  }
%%%%% Define book
\book {
  \include "PetiteMesseSaintVincentDePaul/bookPaper.ily"
  \header {
    title = \markup { \center-column { "Petite messe" "de" "Saint Vincent de Paul" } }
    subtitle = \markup { \center-column { "Pour soliste et chœur à 3 voix" "ou" "chœur à 4 voix" } }
    composer = "Jean Baptiste Favre"
    date = "Clichy-la-Garenne, 2020"
    copyright = \markup \null
    tagline = \markup \null
  }
  % Ensure first page is blank for cover display
  \blankPage
  \bookpart {
    \kyrieScore
    \include "PetiteMesseSaintVincentDePaul/scorePaper.ily"
    \header {
      title = ##f
      piece = "Kyrie"
      subtitle = \markup { \column { "Petite messe de" "Saint Vincent de Paul" } }
      poetPrefix = \poetPrefix
      composerPrefix = \composerPrefix
      poet = "AELF"
      copyright = ""
    }
  }
  \bookpart {
    \alleluiaScore
    \include "PetiteMesseSaintVincentDePaul/scorePaper.ily"
    \header {
      title = ##f
      piece = "Alleluia"
      poet = "AELF"
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
      title = ##f
      piece = "Prière universelle"
      subtitle = \markup { \column { "Petite messe de" "Saint Vincent de Paul" } }
      poetPrefix = \poetPrefix
      composerPrefix = \composerPrefix
      poet = "AELF"
      copyright = ""
    }
    \puScore
  }
  \bookpart {
    \include "PetiteMesseSaintVincentDePaul/scorePaper.ily"
    \header {
      title = ##f
      piece = "Anamnèse"
      subtitle = \markup { \column { "Petite messe de" "Saint Vincent de Paul" } }
      poetPrefix = \poetPrefix
      composerPrefix = \composerPrefix
      poet = "AELF"
      copyright = ""
    }
    \anamneseScore
  }
  \bookpart {
    \include "PetiteMesseSaintVincentDePaul/scorePaper.ily"
    \header {
      title = ##f
      piece = "Sanctus"
      subtitle = \markup { \column { "Petite messe de" "Saint Vincent de Paul" } }
      poetPrefix = \poetPrefix
      composerPrefix = \composerPrefix
      poet = "AELF"
      copyright = ""
    }
    \sanctusScore
  }
  \bookpart {
    \include "PetiteMesseSaintVincentDePaul/scorePaper.ily"
    \header {
      title = ##f
      piece = "Agnus"
      subtitle = \markup { \column { "Petite messe de" "Saint Vincent de Paul" } }
      poetPrefix = \poetPrefix
      composerPrefix = \composerPrefix
      poet = "AELF"
      copyright = ""
    }
    \agnusScore
  }
}