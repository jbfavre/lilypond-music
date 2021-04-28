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

title = "Psaume 32"
subtitle = "Saint Trinité"
composer = "Jean Baptiste Favre"
dedicace = "Clichyla Garenne, avril 2021"

global = {
  \key d \major
  \time 3/4
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoAntiphonMusic = \relative c' {
  \markCustom "Antienne"
  \partial 4. d8 a' b a4 a8 fs8 a fs fs4 e e fs2. \fermata \bar "|." \break
  }

altoAntiphonMusic = \relative c' {
  d8 fs g e4 e8 d8 e8 e d4 d cs d2. \fermata
  }

tenorAntiphonMusic =  \relative c' {
  d8 d d cs4 a8 a8 cs8 cs b4 b a a2. \fermata
  }

bassAntiphonMusic =  \relative c {
  d8 d b cs4 cs8 d a as b (a) g4 a d2. \fermata
  }

antiphonLyrics = \lyricmode {
  Heu -- reux le peu -- ple dont le Sei -- gneur est le Dieu.
  }

sopranoAntiphonLyrics = \antiphonLyrics
altoAntiphonLyrics = \antiphonLyrics
tenorAntiphonLyrics = \antiphonLyrics
bassAntiphonLyrics = \antiphonLyrics

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%          Verses          %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoVerseMusic = \relative c'' {
  \silence \sopranoAntiphonMusic
  \markCustom "Psalmodie par strophe" \cadenzaOn
  b\breve a1 a4 b \bar "||"
  b\breve a1 b4 b \bar "||"
  b\breve a1 a4 a g \bar "||"
  a\breve g1 a4 \bar "|." \break
  \markCustom "Psalmodie par verset" \cadenzaOn
  b\breve a1 a4 b \bar "||"
  a\breve g1 a4 \bar "|."
  }
sopranoVerseRepons = \lyricmode {}
altoVerseMusic = \relative c'' {
  \silence \sopranoAntiphonMusic
  g\breve g1 fs4 g
  g\breve fs1 fs4 fs
  g\breve fs1 fs4 fs e
  e\breve e1 fs4
  g\breve g1 fs4 g
  e\breve e1 fs4
  }

tenorVerseMusic = \relative c' {
  \silence \sopranoAntiphonMusic
  d\breve e1 d4 d
  e\breve e1 e4 ds
  e\breve e1 d4 c b
  c\breve b1 d4
  d\breve e1 d4 d
  c\breve b1 d4
  }

bassVerseMusic = \relative c' {
  \silence \sopranoAntiphonMusic
  g\breve c,1 d4 g
  e\breve c1 b4 b
  e\breve fs1 d4 ds e
  c\breve e1 d4
  g\breve c,1 d4 g
  c,\breve e1 d4
  }

verseLyrics = \markuplist {
  \override #'(font-family . sans)
  \override #'(font-size . 2)
  \column {
    \fill-line {
      \left-column{
        \concat { \typewriter "1. " "Rendez grâce au Seigne" \underline u "r&nbsp;: Il est bon&nbsp;!"}
        \concat { \typewriter "   " "Étern" \underline e "l est son amour&nbsp;!"}
        \concat { \typewriter "   " "Oui, que le d" \underline i "se Israël&nbsp;:"}
        \concat { \typewriter "   " "Étern" \underline e "l est son amour&nbsp;!"}
      }
      \hspace #1
      \left-column {
        \concat { \typewriter "2. " "Le bras du Seigne" \underline u "r se lève,"}
        \concat { \typewriter "   " "le bras du Seigne" \underline u "r est fort&nbsp;!"}
        \concat { \typewriter "   " "Non, je ne mourrai p" \underline a "s, je vivrai"}
        \concat { \typewriter "   " "pour annoncer les acti" \underline o "ns du Seigneur."}
      }
    }
    \vspace #1
    \fill-line {
      \left-column {
        \concat { \typewriter "3. " "La pierre qu’ont rejet" \underline é "e les bâtisseurs"}
        \concat { \typewriter "   " "est deven" \underline u "e la pierre d’angle&nbsp;:"}
        \concat { \typewriter "   " "c’est là l’œ" \underline u "vre du Seigneur,"}
        \concat { \typewriter "   " "la merv" \underline e "ille devant nos yeux."}
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