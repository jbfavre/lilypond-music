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

title = "Psaume 23-5"
subtitle = "Solennité de la Toussaint"
composer = "Jean Baptiste Favre"
dedicace = "Clichy la Garenne, septembre 2019"

global = {
  \key d \major
  \time 3/4
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoAntiphonMusic = \relative c' {
  \markCustom "Antienne"
  d4 fs g a a d, b'2 a4  g fs g a g e fs2.  \fermata \bar "|." \break
  }

altoAntiphonMusic = \relative c' {
  a4 d  d e e b d2 ds4 e e e e e cs d2. \fermata
  }

tenorAntiphonMusic =  \relative c {
  fs4 b g a a fs g2 fs4 b b b cs cs a a2. \fermata
  }

bassAntiphonMusic =  \relative c {
  d4 b b cs cs b g2 b4 e e e a, a a d2. \fermata
  }

antiphonLyrics = \lyricmode {
  Voi -- ci le peu -- ple de ceux qui cher -- chent ta fa -- ce, Sei -- gneur.
  }
sopranoAntiphonLyrics = \antiphonLyrics
altoAntiphonLyrics = \antiphonLyrics
tenorAntiphonLyrics = \antiphonLyrics
bassAntiphonLyrics = \tenorAntiphonLyrics

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
\include "../libs/defaultPianoSettings.ily"
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