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
dedicace = "Clichyla Garenne, mars 2021"

global = {
  \key g \major
  \time 3/8
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoAntiphonMusic = \relative c' {
  \markCustom "Antienne"
  \partial 8 d8 g4 g8 a4 a8 b c a a8 (g4)
  g8 a b c b a g a fs g4. (g) \fermata \bar "|." \break
  }

altoAntiphonMusic = \relative c' {
  r8 d4 e8 e4 fs8 fs4 fs8 e4.
  e4 e8 e4 e8 d8 d4 d4. (d4.) \fermata
  }

tenorAntiphonMusic =  \relative c' {
  r8 b4 c8 c8 c d ds8 b b b4.
  c4 c8 c4 a8 a4 c8 c4 b16 a b4. \fermata
  }

bassAntiphonMusic =  \relative c' {
  r8 g8 fs e8 fs8 (e8) d16 c16 b4 ds8 e4 (d8)
  c4 b8 a8 b c8 d4 d16 d16 g,4. (g) \fermata
  }

antiphonLyrics = \lyricmode {
  Voi -- ci le jour que fit le Sei -- gneur, qu'il soit pour nous jour de fê -- te~et de joie !
  }

sopranoAntiphonLyrics = \antiphonLyrics
altoAntiphonLyrics = \lyricmode {
  Jour de fê -- te, jour de joie, jour de fê -- te, jour de joie !
  }
tenorAntiphonLyrics = \lyricmode {
  Voi -- ci le jour que fit le Sei -- gneur, jour de fê -- te, jour de fê -- te~et de joie !
  }
bassAntiphonLyrics = \lyricmode {
  Voi -- ci le jour que fit le Sei -- gneur, jour de fê -- te, de fê -- te~et de joie !
  }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%          Verses          %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoVerseMusic = \relative c'' {
  \silence \sopranoAntiphonMusic
  \markCustom "Psalmodie par strophe" \cadenzaOn
  b\breve a4 a b \bar "||"
  b\breve a1 b4 b \bar "||"
  b\breve a1 a4 a g \bar "||"
  a\breve g1 a4 \bar "|." \break
  \markCustom "Psalmodie par verset" \cadenzaOn
  b\breve a4 a b \bar "||"
  a\breve g1 a4 \bar "|."
  }
sopranoVerseRepons = \lyricmode {}
altoVerseMusic = \relative c'' {
  \silence \sopranoAntiphonMusic
  g\breve g4 fs g
  g\breve fs1 fs4 fs
  g\breve fs1 fs4 fs d
  e\breve e1 fs4
  g\breve g4 fs g
  e\breve e1 fs4
  }

tenorVerseMusic = \relative c' {
  \silence \sopranoAntiphonMusic
  d\breve e4 d d
  e\breve e1 e4 ds
  e\breve e1 d4 c b
  c\breve b1 d4
  d\breve e4 d d
  c\breve b1 d4
  }

bassVerseMusic = \relative c' {
  \silence \sopranoAntiphonMusic
  g\breve c,4 d g
  e\breve c1 b4 b
  e\breve fs1 fs4 fs g
  c,\breve e1 d4
  g\breve c,4 d g
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