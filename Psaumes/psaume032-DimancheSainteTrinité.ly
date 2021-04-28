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
  \override BreathingSign.text = \markup {
    \musicglyph #"scripts.caesura.straight"
  }
  \partial 4. d8 a' b a4 a8 \breathe fs8 a g fs4 e e fs2. \fermata \bar "|." \break
  }

altoAntiphonMusic = \relative c' {
  \override BreathingSign.text = \markup {
    \musicglyph #"scripts.caesura.straight"
  }
  \partial 4. d8 fs g g8 (fs) e \breathe d e e d4 d cs d2. \fermata
  }

tenorAntiphonMusic =  \relative c' {
  \override BreathingSign.text = \markup {
    \musicglyph #"scripts.caesura.straight"
  }
  \partial 4. d8 d d cs4 cs8 \breathe a cs cs b4 b a a2. \fermata
  }

bassAntiphonMusic =  \relative c {
  \override BreathingSign.text = \markup {
    \musicglyph #"scripts.caesura.straight"
  }
  \partial 4. d8 d g, a4 a8 \breathe d a as b (a) g4 a d2. \fermata
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
  a\breve b1 a4 g fs \bar "||"
  g\breve fs1 e4 \bar "||"
  e\breve fs1 d4 \bar "||"
  g\breve fs1 e4 e \bar "|." \break
  \markCustom "Psalmodie par verset" \cadenzaOn
  a\breve b1 a4 \bar "||"
  fs\breve g1 a4 \bar "|."
  }
sopranoVerseRepons = \lyricmode {}
altoVerseMusic = \relative c' {
  \silence \sopranoAntiphonMusic
  fs\breve g1 e4 e d
  d\breve d1 cs4
  cs\breve cs1 b4
  d\breve d1 d4 cs
  fs\breve g1 e4
  d\breve e1 e4
  }

tenorVerseMusic = \relative c' {
  \silence \sopranoAntiphonMusic
  d\breve d1 cs4 cs d
  b\breve a1 a4
  a\breve fs1 fs4
  b\breve b1 b4 a
  d\breve d1 cs4
  b\breve d1 cs4
  }

bassVerseMusic = \relative c {
  \silence \sopranoAntiphonMusic
  d\breve g,1 a4 as b
  g\breve d'1 a'4
  a,\breve as1 b4
  g\breve gs1 a4 a
  d\breve g,1 a4
  b\breve b1 a4
  }

verseLyrics = \markuplist {
  \override #'(font-family . sans)
  \override #'(font-size . 2)
  \column {
    \fill-line {
      \left-column{
        \concat { \typewriter "1. " "Oui, elle est droite, la par" \underline o "le du Seigneur&nbsp;;"}
        \concat { \typewriter "   " "il est fid" \underline è "le en tout ce qu’il fait."}
        \concat { \typewriter "   " "Il aime le bon dro" \underline i "t et la justice&nbsp;;"}
        \concat { \typewriter "   " "la terre est rempl" \underline i "e de son amour."}
      }
      \hspace #1
      \left-column {
        \concat { \typewriter "2. " "Le Seigneur a fait les ci" \underline e "ux par sa parole,"}
        \concat { \typewriter "   " "l’univers, par le so" \underline u "ffle de sa bouche."}
        \concat { \typewriter "   " "Il parla, et ce qu’il d" \underline i "t exista&nbsp;;"}
        \concat { \typewriter "   " "il commanda, et ce qu’il d" \underline i "t survint."}
      }
    }
    \vspace #1
    \fill-line {
      \left-column{
        \concat { \typewriter "3. " "Dieu veille sur ce" \underline u "x qui le craignent,"}
        \concat { \typewriter "   " "qui mettent leur esp" \underline o "ir en son amour,"}
        \concat { \typewriter "   " "pour les délivr" \underline e "r de la mort,"}
        \concat { \typewriter "   " "les garder en vie aux j" \underline o "urs de famine."}
      }
      \hspace #1
      \left-column {
        \concat { \typewriter "4. " "Nous attendons notre v" \underline i "e du Seigneur&nbsp;:"}
        \concat { \typewriter "   " "il est pour nous un appu" \underline i ", un bouclier."}
        \concat { \typewriter "   " "Que ton amour, Seign" \underline e "ur, soit sur nous"}
        \concat { \typewriter "   " "comme notre esp" \underline o "ir est en toi&nbsp;!"}
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