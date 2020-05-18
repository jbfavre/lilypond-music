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

title = "Psaume 97"
subtitle = "Nativité du Seigneur - Messe du jour"
composer = "Jean Baptiste Favre"
dedicace = "Saint Pierre Quiberon, 25 décembre 2018"

global = {
  \key a \major
  \time 3/8
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoAntiphonMusic = \relative c' {
  \markCustom "Antienne"
  e8 e e a4 a8 b a b cs4. \breathe
  \time 3/4
  r4 cs4 a gs a2 \fermata \bar "|." \break
  }

altoAntiphonMusic = \relative c' {
  cs8 cs cs e4 e8 fs fs gs a4.
  r4 a4 d, d e2 \breathe
  }

tenorAntiphonMusic =  \relative c' {
  a8 a a cs4 cs8 b d d cs4.
  r4 d4 b b d4 (cs) \breathe
  }

bassAntiphonMusic =  \relative c' {
  a8 a gs fs4 cs8 d b e fs4.
  r4 fs8 (d) e4 <e e,> a,2 \breathe
  }

antiphonLyrics = \lyricmode {
   La ter -- r~en -- tière a vu
   le Sau -- veur que Dieu nous donne.
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
  \markCustom "Psalmodie par verset" \cadenzaOn
  fs\breve gs1 a4 \bar "||"
  a\breve b1 cs4 \bar "||"
  cs\breve cs4 b4 \bar "||"
  b\breve fs1 a4 gs4 \bar "||"
  }

altoVerseMusic = \relative c' {
  \silence \sopranoAntiphonMusic
  cs\breve e1 cs4
  d\breve d1 cs4
  e\breve d4 d4
  fs\breve d1 d4 d4
  }

tenorVerseMusic = \relative c' {
  \silence \sopranoAntiphonMusic
  a\breve gs1 a4
  b\breve gs1 a4
  as\breve b4 b4
  b\breve a1 b4 b4
  }

bassVerseMusic = \relative c {
  \silence \sopranoAntiphonMusic
  fs\breve cs1 fs4
  fs\breve e1 e4
  fs\breve fs4 fs4
  ds\breve b1 e4 e4
  }

verseLyrics = \markup {
  \vspace #5
  \override #'(font-family . sans)
  \override #'(font-size . 2)
  \fill-line {
    \left-column{
      \concat { \typewriter "1. " "Le Seigneur est roi&nbsp;! " Ex \underline u lte " la terre&nbsp;!" }
      \concat { \typewriter "   " "Joie pour les " \underline î les " sans nombre&nbsp;!" }
      \concat { \typewriter "   " "Les cieux ont " proclam \underline é " sa justice," }
      \concat { \typewriter "   " "et tous les " pe \underline u ples " ont vu sa gloire." }
      \vspace #1
      \concat { \typewriter "2. " "Une lumière est " sem \underline é e " pour le juste," }
      \concat { \typewriter "   " "et pour le cœur " s \underline i mple, " une joie." }
      \concat { \typewriter "   " "Que le Seigneur soit votre " j \underline o ie, " hommes justes&nbsp;;" }
      \concat { \typewriter "   " "rendez grâce en rappelant son " n \underline o m " très saint." }
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