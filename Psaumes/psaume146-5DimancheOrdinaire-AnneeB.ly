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

%topToMarkupSpacing =
%  #'((basic-distance . 0)
%    (minimum-distance . 0)
%     (padding . 0)
%     (stretchability . 0))

title = "Psaume 146-1"
subtitle = "5e dimanche du Temps Ordinaire - Année B"
composer = "Jean Baptiste Favre"
dedicace = "Clichy la Garenne, 2 décembre 2017"

global = {
  \key d \major
  \time 3/4 
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoAntiphonMusic = \relative c' {
   %\time 9/8 \partial 4. r8 d8 e
   %\time 3/4 fs4 g a
   %\time 9/8 a4. r8 g8 a
   %\time 3/4 b4 a g a2
   %\fermata \bar "|." \break
  \markCustom "Antienne"
   \partial 4 d8 e
   fs4 g a
   a4. r8 g8 e
   fs4 b8[ (a)] g4 fs2.
   \fermata \bar "|." \break
  }

altoAntiphonMusic = \relative c' {
  b8 cs8 d4 d fs cs4 a4 as4 b4 g a a2.
  }

tenorAntiphonMusic =  \relative c' {
  fs,8 a8 a4 g d' cs4 e e d d4 d8 (cs8) d2.
  }

bassAntiphonMusic =  \relative c {
  fs8 e d4 b d e4 cs <cs fs> <b fs'>4 g'8 (fs) e4 d2.
  }

antiphonLyrics = \lyricmode {
    Bé -- nis -- sons le Sei -- gneur
    qui gué -- rit les bles -- sures.
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
  fs\breve a1 e4 \bar "||"
  e\breve g1 fs4 e d4 \bar "||"
  b'\breve a1 g4 \bar "||"
  fs\breve e1 e4 d4 \bar "|."
  }

altoVerseMusic = \relative c' {
  \silence \sopranoAntiphonMusic
  d\breve fs1 d4
  cs\breve <cs e>1 d4 cs b4
  b\breve b1 e4
  d\breve d1 cs4 a4
  }

tenorVerseMusic = \relative c' {
  \silence \sopranoAntiphonMusic
  a\breve a1 g4
  a\breve fs1 fs4 g fs4
  g\breve fs1 b4
  g\breve g!1 g4 fs4
  }

bassVerseMusic = \relative c {
  \silence \sopranoAntiphonMusic
  d\breve cs1 b4
  cs\breve as1 b4 g b4
  d\breve ds1 e4
  b\breve a1 a4 <d! d,!>4
  }

verseLyrics = \markup {
  \vspace #5
  \override #'(font-family . sans)
  \override #'(font-size . 2)
  \column {
    \fill-line {
      \left-column{
        \concat { \typewriter "1. " "Il est bon de " fêt \underline e r " notre Dieu," }
        \concat { \typewriter "   " "il est beau de " chant \underline e r " sa louange&nbsp;:" }
        \concat { \typewriter "   " "il " guér \underline i t " les cœurs brisés" }
        \concat { \typewriter "   " "et " s \underline o igne " leurs blessures." }
      }
      \hspace #1
      \left-column{
        \concat { \typewriter "2. " "Il compte le " n \underline o mbre " des étoiles," }
        \concat { \typewriter "   " "il " d \underline o nne " à chacune un nom&nbsp;;" }
        \concat { \typewriter "   " "il est grand, il est " f \underline o rt, " notre Maître&nbsp;:" }
        \concat { \typewriter "   " "nul n’a " mesur \underline é " son intelligence." }
      }
    }
    \vspace #1
    \fill-line {
      \left-column{
        \concat { \typewriter "3. " "Le Seigneur " él \underline è ve " les humbles" }
        \concat { \typewriter "   " "et rabaisse jusqu’à " t \underline e rre " les impies." }
        \concat { \typewriter "   " "Entonnez pour le " Seigne \underline u r " l’action de grâce," }
        \concat { \typewriter "   " "jouez pour notre " Die \underline u " sur la cithare&nbsp;!" }
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