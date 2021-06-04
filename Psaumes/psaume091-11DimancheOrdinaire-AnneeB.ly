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
subtitle = "11ème Dimanche du Temps Ordinaire"
composer = "Jean Baptiste Favre"
dedicace = "Clichyla Garenne, mai 2021"

global = {
  \key f \major
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
  \partial 4 f8 f8 a4 d c2 bf8 a g f f4 (g) f2 \fermata \bar "|." \break
  }

altoAntiphonMusic = \relative c' {
  \override BreathingSign.text = \markup {
    \musicglyph #"scripts.caesura.straight"
  }
  \partial 4 c8 c c4 f e2 d8 d d d c4 (d8 e) c2
  }

tenorAntiphonMusic =  \relative c' {
  \override BreathingSign.text = \markup {
    \musicglyph #"scripts.caesura.straight"
  }
  \partial 4 a8 a a (g) a4 a2 f8 fs g gs a4 (bf) a2
  }

bassAntiphonMusic =  \relative c {
  \override BreathingSign.text = \markup {
    \musicglyph #"scripts.caesura.straight"
  }
  \partial 4 f8 f f8 (e) d4 a2 bf8 bf b b c4 (c) f2 \fermata
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
  f\breve g1 a4 \bar "||"
  a\breve bf1 c4 \bar "||"
  c\breve bf1 a4 \bar "||"
  a\breve g1 g4 \bar "|." \break
  \markCustom "Psalmodie par verset" \cadenzaOn
  f\breve g1 a4 \bar "||"
  a\breve g1 g4 \bar "|." \break
  }
sopranoVerseRepons = \lyricmode {}
altoVerseMusic = \relative c' {
  \silence \sopranoAntiphonMusic
  d\breve e1 f4
  f\breve gs1 a4
  a\breve g?1 e4
  f\breve s1 e4

  d\breve e1 f4
  f\breve f1 e4
  }

tenorVerseMusic = \relative c' {
  \silence \sopranoAntiphonMusic
  a\breve c1 c4
  c\breve e1 e4
  f\breve d1 cs4
  d\breve d1 c?4

  a\breve c1 c4
  d\breve d1 c4
  }

bassVerseMusic = \relative c {
  \silence \sopranoAntiphonMusic
  d\breve c1 f4
  f\breve e1 a4
  f\breve g1 a4
  d,\breve bf1 c4

  d\breve c1 f4
  d\breve bf1 c4
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