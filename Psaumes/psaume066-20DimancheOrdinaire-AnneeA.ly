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

title = "Psaume 66-2"
subtitle = "20e dimanche du Temps Ordinaire - Année A"
composer = "Jean Baptiste Favre"
dedicace = "Clichy la Garenne, 22 septembre 2017"

global = {
  \key d \minor
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoAntiphonMusic = \relative c' {
  \markCustom "Antienne"
  f8 g a bf a4. a8 c b a4 a4 \breathe g8 g a bf a g f g a2 a2 \fermata \bar "|."
  }

altoAntiphonMusic = \relative c' {
  d8 e f d c4. c8 e e d4 cs \breathe e8 e f d c bf cs e f2 e2 \fermata
  }

tenorAntiphonMusic =  \relative c' {
  a8 c c bf a4. a8 c d f4 e \breathe cs8 cs d f c e e cs a2 a2 \fermata
  }

bassAntiphonMusic =  \relative c {
  d8 c a d f4. f8 g gs a4 a \breathe a,8 a f bf f g a a d4 (cs8 b) cs2 \fermata
  }

antiphonLyrics = \lyricmode {
  Que les peu -- ples, Dieu, Te ren -- dent grâ -- ce; qu'ils Te ren -- dent grâ -- ce tous en -- sem -- ble
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
  \markCustom "Psalmodie par verset" \cadenzaOn
  a\breve c1 b4 \bar "||"
  b\breve c1 a4 a4 \bar "||"
  b\breve g1 c4 \bar "||"
  bf\breve g1 f4 a4 \bar "|."
  }

altoVerseMusic = \relative c' {
  \silence \sopranoAntiphonMusic
  f\breve e1 d4
  g\breve e1 d4 e4
  g\breve e1 g4
  d\breve e1 f4 f4
  }

tenorVerseMusic = \relative c' {
  \silence \sopranoAntiphonMusic
  a\breve g1 d'4
  b\breve g1 a4 a4
  g\breve b1 g4
  bf\breve c1 a4 a4
  }

bassVerseMusic = \relative c {
  \silence \sopranoAntiphonMusic
  d\breve e1 g4
  e\breve c1 f4 cs4
  d\breve b1 c4
  g'\breve c,1 c4 f4
  }

verseLyrics = \markup {
  \vspace #5
  \override #'(font-family . sans)
  \override #'(font-size . 2)
  \fill-line {
    \left-column{
      \concat { \typewriter "1. " "Que Dieu nous prenne en gr" \underline â "ce et nous bénisse," }
      \concat { \typewriter "   " "que ton visage s’illum" \underline i "ne pour nous&nbsp;;" }
      \concat { \typewriter "   " "et ton chemin sera conn" \underline u " sur la terre," }
      \concat { \typewriter "   " "ton salut, parmi to" \underline u "tes les nations." }
      \vspace #1
      \concat { \typewriter "2. " "Que les nations ch" \underline a "ntent leur joie," }
      \concat { \typewriter "   " "car tu gouvernes le m" \underline o "nde avec justice&nbsp;;" }
      \concat { \typewriter "   " "tu gouvernes les pe" \underline u "ples avec droiture" }
      \concat { \typewriter "   " "sur la terre, tu condu" \underline i "s les nations." }
      \vspace #1
      \concat { \typewriter "3. " "La terre a donn" \underline é " son fruit&nbsp;;" }
      \concat { \typewriter "   " "Dieu, notre Di" \underline e "u, nous bénit." }
      \concat { \typewriter "   " "Que Di" \underline e "u nous bénisse," }
      \concat { \typewriter "   " "et que la terre tout enti" \underline è "re l’adore&nbsp;!" }
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