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
  \paper {
    #(define fonts
      (set-global-fonts
       #:music "emmentaler"
       #:brace "emmentaler"
       #:roman "Arial"
       #:sans "Cantarell thin"
      ))
    bookTitleMarkup = \markup \column {
      \fill-line { \fontsize #5 \fromproperty #'header:composer }
      \when-property #'header:date \fill-line { \combine \vspace #1.2 \fontsize #1 \sans \fromproperty #'header:date }
      \combine \null \vspace #12
      \fill-line { \postscript #"-40 0 moveto 80 0 rlineto stroke" }
      \combine \null \vspace #4
      \fill-line { \fontsize #10 \fromproperty #'header:title }
      \combine \null \vspace #1
      \fill-line { \postscript #"-10 0 moveto 20 0 rlineto stroke" }
      \vspace #1
      \fill-line { \when-property #'header:subtitle \fontsize #3 \sans \fromproperty #'header:subtitle }
      \vspace #1
      \fill-line { \postscript #"-40 0 moveto 80 0 rlineto stroke" }
    }
    scoreTitleMarkup = \markup \null
    top-margin = 1.5 \cm
    bottom-margin = 1.5 \cm
    left-margin = 2 \cm
    right-margin = 2 \cm
  }
  \header {
    title = \markup { \center-column { "Petite messe" "de" "Saint Vincent de Paul" } }
    subtitle = \markup { \sans \center-column { "Pour soliste et chœur à 3 voix" "ou" "chœur à 4 voix" } }
    composer = "Jean Baptiste Favre"
    date = \markup { \typewriter "Clichy-la-Garenne, 2020" }
    copyright = \markup \null
    tagline = \markup \null
  }
  % Ensure first page is blank for cover display
  \blankPage
  \bookpart {
    \kyrieScore
    \include "PetiteMesseSaintVincentDePaul/common-paper.ily"
    \header {
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
    \include "PetiteMesseSaintVincentDePaul/common-paper.ily"
    \header {
      piece = "Alleluia"
      subtitle = \markup { \column { "Petite messe de" "Saint Vincent de Paul" } }
      poetPrefix = \poetPrefix
      composerPrefix = \composerPrefix
      poet = "AELF"
      copyright = ""
    }
  }
%  \bookpart {
%    \include "PetiteMesseSaintVincentDePaul/common-paper.ily"
%    \header {
%      piece = "Gloria"
%      subtitle = "Petite messe de Saint Vincent de Paul"
%      poetPrefix = \poetPrefix
%      composerPrefix = \composerPrefix
%      poet = "AELF"
%      copyright = ""
%    }
%    \gloriaScore
%  }
  \bookpart {
    \include "PetiteMesseSaintVincentDePaul/common-paper.ily"
    \header {
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
    \include "PetiteMesseSaintVincentDePaul/common-paper.ily"
    \header {
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
    \include "PetiteMesseSaintVincentDePaul/common-paper.ily"
    \header {
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
    \include "PetiteMesseSaintVincentDePaul/common-paper.ily"
    \header {
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