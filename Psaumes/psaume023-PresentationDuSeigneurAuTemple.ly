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
antiphonRhythms = {}
antiphonFiguredHarmony = {}
antiphonFiguredBass = {}
verseFiguredHarmony = {}

title = "Psaume 23-3"
subtitle = "Présentation du Seigneur au Temple"
composer = "Jean Baptiste Favre"
dedicace = "Clichy la Garenne, février 2020"

global = {
  \key f \major
  \time 3/8
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoAntiphonMusic = \relative c' {
  \markCustom "Antienne"
  c8 f g a4 bf8 g a bf c4. r4 f,8 d'4. d8 c bf c4. (c4.) \fermata \bar "|." \break
  }

altoAntiphonMusic = \relative c' {
  c8 d e f4 f8 e f f a4. r8 f8 f f4. d8 f f e4. f4. \fermata
  }

tenorAntiphonMusic =  \relative c' {
  a8 a c c4 d8 c c d e4 \breathe f,8 d'8 r8 a bf4. g8 c bf g4. a4. \fermata
  }

bassAntiphonMusic =  \relative f {
  f8 d c f4 bf,8 c f bf, a4. r8 d8 d bf4. g8 a d c4. f,4. \fermata
  }

antiphonLyrics = \lyricmode {
  C'est le Sei -- gneur, Dieu de l'u -- ni -- vers; c'est lui, le roi de gloire.
  }
sopranoAntiphonLyrics = \antiphonLyrics
altoAntiphonLyrics = \lyricmode {
  C'est le Sei -- gneur, Dieu de l'u -- ni -- vers; oui c'est lui, le roi de gloire.
  }
tenorAntiphonLyrics = \lyricmode {
  C'est le Sei -- gneur, Dieu de l'u -- ni -- vers; c'est lui&nbsp;! c'est lui, le roi de gloire.
  }
bassAntiphonLyrics = \lyricmode {
  C'est le Sei -- gneur, Dieu de l'u -- ni -- vers; oui c'est lui, le roi de gloire.
  }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%          Verses          %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoVerseMusic = \relative c' {
  \silence \sopranoAntiphonMusic
  \markCustom "Psalmodie par verset" \cadenzaOn
  fs\breve a1 b4 \bar "||"
  b\breve a1 a4 \bar "||"
  }

altoVerseMusic = \relative c' {
  \silence \sopranoAntiphonMusic
  d\breve e1 d4
  g\breve e1 fs4
  }

tenorVerseMusic = \relative c' {
  \silence \sopranoAntiphonMusic
  a\breve a1 fs4
  b\breve cs1 d4
  }

bassVerseMusic = \relative f {
  \silence \sopranoAntiphonMusic
  d\breve cs1 b4
  e\breve a,1 d4
  }

verseLyrics = \markup {
  \vspace #5
  \override #'(font-family . sans)
  \override #'(font-size . 2)
  \fill-line {
    \left-column{
      \concat { \typewriter "1. " "Au Seigneur, le m" \underline o "nde et sa richesse," }
      \concat { \typewriter "   " "la terre et to" \underline u "s ses habitants&nbsp;!" }
      \concat { \typewriter "   " "C’est lui qui l’a fond" \underline é "e sur les mers" }
      \concat { \typewriter "   " "et la garde inébranl" \underline a "ble sur les flots." }
      \vspace #1
      \concat { \typewriter "2. " "Qui peut gravir la mont" \underline a "gne du Seigneur" }
      \concat { \typewriter "   " "et se ten" \underline i "r dans le lieu saint&nbsp;?" }
      \concat { \typewriter "   " "L’homme au cœur pur, aux m" \underline a "ins innocentes," }
      \concat { \typewriter "   " "qui ne livre pas son " \underline â "me aux idoles." }
      \vspace #1
      \concat { \typewriter "3. " "Il obtient, du Seigne" \underline u "r, la bénédiction," }
      \concat { \typewriter "   " "et de Dieu son Sauve" \underline u "r, la justice." }
      \concat { \typewriter "   " "Voici le peuple de ce" \underline u "x qui le cherchent&nbsp;!" }
      \concat { \typewriter "   " "Voici Jacob qui rech" \underline e "rche ta face&nbsp;!" }

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