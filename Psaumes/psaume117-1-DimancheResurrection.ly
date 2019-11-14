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

title = "Psaume 117-1"
subtitle = "Résurrection du Seigneur"
composer = "Jean Baptiste Favre"
dedicace = "Abbaye de Solesmes, mars 2018"

global = {
  \key g \major
  \time 6/8
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoAntiphonMusic = \relative c' {
  \markCustom "Antienne"
  \partial 2 d8 g4 g8 a4 a8 b[ c a] g4.
  g8[ a b] a[ b a] g[ e fs] g2. \fermata \bar "|." \break
  }

altoAntiphonMusic = \relative c' {
  \partial 2 a8 d4 b8 d4 e8 ds[ fs ds] e4.
  e4 d8 c4 c8 d8[ (d) a] d2. \fermata
  }

tenorAntiphonMusic =  \relative c {
  \partial 2 fs8 g4 g8 fs4 a8 fs[ b b] b4.
  c4 g8 e4 a8 a[ (a) c] c[ a] b2 \fermata
  }

bassAntiphonMusic =  \relative c {
  \partial 2 d8 b4 e8 d4 c8 b[ ds fs] e4 (d8)
  c4 b8 a4 e'8 d[ c a] g2. \fermata
  }

antiphonLyrics = \lyricmode {
  Voi -- ci le jour que fit le Sei -- gneur, qu'il soit pour nous jour de fê -- te~et de joie !
  }

sopranoAntiphonLyrics = \antiphonLyrics
altoAntiphonLyrics = \lyricmode {
  Voi -- ci le jour que fit le Sei -- gneur, jour de fête, de fête~et de joie !
  }
tenorAntiphonLyrics = \lyricmode {
  Voi -- ci le jour que fit le Sei -- gneur, jour de fête, de fête~et de joie !
  }
bassAntiphonLyrics = \lyricmode {
  Voi -- ci le jour que fit le Sei -- gneur, jour de fête, de fête~et de joie !
  }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%          Verses          %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoVerseMusic = \relative c'' {
  \silence \sopranoAntiphonMusic
  \markCustom "Psalmodie par strophe" \cadenzaOn
  b\breve b1 c4 a b \bar "||"
  b\breve b1 a4 g a \bar "||"
  a\breve b1 a4 g \bar "||"
  g\breve s8 c1 b4 g a g \bar "|."
  }
sopranoVerseRepons = \lyricmode {}
altoVerseMusic = \relative c' {
  \silence \sopranoAntiphonMusic
  d\breve d1 e4 d d
  g\breve g1 fs4 d fs
  fs\breve ds1 ds4 b4
  e\breve s8 a1 g4 e e8 (fs) d4
  }

tenorVerseMusic = \relative c' {
  \silence \sopranoAntiphonMusic
  b\breve b1 g4 fs g
  d'\breve e1 a,4 b a
  b\breve fs1 b4 b
  c\breve s8 e1 b4 c a4 b4
  }

bassVerseMusic = \relative c' {
  \silence \sopranoAntiphonMusic
  g\breve g1 c,4 d g
  g\breve e1 d4 b d
  ds\breve b1 ds4 e8[ (d)]
  c\breve b8 a1 e'4 c cs8 (d) g,4
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
\include "../libs/defaultPianoSettings.ly"
\include "../libs/layouts/commonSettings.ily"

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