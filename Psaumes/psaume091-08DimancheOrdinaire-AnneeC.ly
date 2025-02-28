\version "2.18.2"
\language "english"
%{
  Default settings are needed at the beginning
  because they are used in antiphon & verse music definition
  You can override default values simply by declaring variables again.
%}
\include "../libs/commonFunctions.ily"
\include "../libs/translations/fr.ily"
\include "../libs/settings.ily"

title = "Psaume 91"
subtitle = \markup { \column { "8ème Dimanche du Temps Ordinaire" "Année C" } }
composer = "Jean Baptiste Favre"
dedicace = "Clichy la Garenne, Février 2025"

global = {
  \key d \major
  \time 2/4
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoAntiphonMusic = \relative c' {
  \markCustom "Antienne"
  \override BreathingSign.text = \markup {
    \musicglyph #"scripts.caesura.straight"
  }
  \partial 4 d8 e8 fs4. b8 a2 g8 fs e e d4 d \fermata \bar "|." \break
  }

altoAntiphonMusic = \relative c' {
  \override BreathingSign.text = \markup {
    \musicglyph #"scripts.caesura.straight"
  }
  \partial 4 a8 a d4 fs fs2 e8 d cs b a4 a
  }

tenorAntiphonMusic =  \relative c {
  \override BreathingSign.text = \markup {
    \musicglyph #"scripts.caesura.straight"
  }
  \partial 4 fs8 fs a4 d cs2 b8 b a g fs4 fs
  }

bassAntiphonMusic =  \relative c {
  \override BreathingSign.text = \markup {
    \musicglyph #"scripts.caesura.straight"
  }
  \partial 4 d8 d d (cs) b4 fs'2 g8 g a a, d4 d \fermata
  }

antiphonLyrics = \lyricmode {
  Qu'il est bon, Sei -- gneur, de te ren -- dre grâ -- ce
  }

sopranoAntiphonLyrics = \antiphonLyrics
altoAntiphonLyrics = \antiphonLyrics
tenorAntiphonLyrics = \antiphonLyrics
bassAntiphonLyrics = \antiphonLyrics

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%          Verses          %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoVerseMusic = \relative c' {
  \silence \sopranoAntiphonMusic
  \markCustom "Psalmodie par strophe" \cadenzaOn
  fs\breve a1 fs4 \bar "||"
  fs\breve e1 fs4 \bar "||"
  fs\breve e1 d4 \bar "||"
  e\breve e1 d4 \bar "|." \break
  \markCustom "Psalmodie par verset" \cadenzaOn
  fs\breve a1 fs4 \bar "||"
  fs\breve e1 fs4 \bar "||"
  }
sopranoVerseRepons = \lyricmode {}
altoVerseMusic = \relative c' {
  \silence \sopranoAntiphonMusic
  d\breve e1 d4
  d\breve cs1 d4
  cs\breve cs1 b4
  d\breve cs1 a4

  d\breve e1 d4
  d\breve cs1 d4
  }

tenorVerseMusic = \relative c' {
  \silence \sopranoAntiphonMusic
  a\breve cs1 b4
  b\breve b1 a4
  fs\breve fs1 fs4
  b\breve a1 a4

  a\breve cs1 b4
  b\breve b1 a4
  }

bassVerseMusic = \relative c {
  \silence \sopranoAntiphonMusic
  d\breve a1 b4
  g\breve a1 d4
  as\breve as1 b4
  g\breve a1 d4

  d\breve a1 b4
  g\breve a1 d4
  }

verseLyrics = \markuplist {
  \override #'(font-family . sans)
  \override #'(font-size . 2)
  \column {
    \fill-line {
      \left-column{
        \concat { \typewriter "1. " "Qu'il est bon de rendre gr" \underline â "ce au Seigneur,"}
        \concat { \typewriter "   " "de chanter pour son n" \underline o "m, Dieu très haut,"}
        \concat { \typewriter "   " "D'annoncer dès le mat" \underline i "n ton amour,"}
        \concat { \typewriter "   " "ta fidélit" \underline é " au long des nuits."}
      }
      \hspace #1
      \left-column {
        \concat { \typewriter "2. " "Le juste grandir" \underline a " comme un palmier,"}
        \concat { \typewriter "   " "il poussera comme un c" \underline è "dre du Liban"}
        \concat { \typewriter "   " "planté dans les parv" \underline i "s du Seigneur,"}
        \concat { \typewriter "   " "il grandira dans la mais" \underline o "n de notre Dieu."}
      }
    }
    \vspace #1
    \fill-line {
      \left-column{
        \concat { \typewriter "3. " "Vieillissant, il fructif" \underline i "e encore,"}
        \concat { \typewriter "   " "il garde sa s" \underline è "ve et sa verdeur,"}
        \concat { \typewriter "   " "pour annoncer&nbsp;: «&nbsp;Le Seigne" \underline u "r est droit&nbsp;!"}
        \concat { \typewriter "   " "Pas de ruse en Die" \underline u ", mon rocher&nbsp;!&nbsp;»."}
      }
    }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%          Draw score          %%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Load Piano settings & layout
\include "../libs/defaultPianoSettings.ily"
\include "../libs/layouts/commonSettings.ily"
staffCustomSize = 16
partition = {
  <<
    % Antienne à 4 voix mixtes
    \include "../libs/layouts/commonAntiphonFourVoices.ily"
    \include "../libs/layouts/commonPiano.ily"
    % Psalmodie à 4 voix mixtes
    \include "../libs/layouts/commonVerseFourVoices.ily"
    %\new FiguredBass { \figuredBass \verseFiguredBass }
    %\new FiguredBass { \harmony \verseHarmony }
  >>
}

% Load PDF output
\include "../libs/layouts/outputPDF.ily"
\verseLyrics