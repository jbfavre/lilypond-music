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

title = "Psaume 102-5"
subtitle = "24e dimanche du Temps Ordinaire - Année A"
composer = "Jean Baptiste Favre"
dedicace = "Île d'Hoêdic, août 2017"

global = {
  \key f \major
  \time 2/4
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoAntiphonMusic = \relative c' {
  \markCustom "Antienne"
  \partial 4 f8 g a4 g8 a c4 bf8 a g2 \breathe a8 a g a f d f g a2 \fermata \bar "|." \break
  }

altoAntiphonMusic = \relative c' {
  \partial 4 c8 c d4 bf8 c8 d4 d8 c e2 \breathe e8 e cs e d a d e c2 \fermata
  }

tenorAntiphonMusic =  \relative c' {
  \partial 4 a8 g f4 f8 e8 f4 g8 a8 g2 \breathe g8 g a g a f bf bf a2 \fermata
  }

bassAntiphonMusic =  \relative c {
  \partial 4 f8 e d4 d8 c bf4 d8 f c2 \breathe cs8 cs a cs d c bf c f2 \fermata
  }

antiphonLyrics = \lyricmode {
  Le Sei -- gneur est ten -- dresse et pi -- tié,
  lent à la co -- lère et plein d’a -- mour.
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
  a\breve c4 \bar "||"
  b\breve g1 a4 \bar "||"
  a\breve g1 a4 f4 \bar "||"
  c'\breve bf1 g4 a4 \bar "|."
  }

altoVerseMusic = \relative c' {
  \silence \sopranoAntiphonMusic
  f\breve e4
  g\breve e1 e4
  e\breve e1 e4 d4
  f\breve g1 d4 e4
  }

tenorVerseMusic = \relative c' {
  \silence \sopranoAntiphonMusic
  d\breve c4
  d\breve b1 c4
  cs\breve cs1 cs4 a4
  d\breve e1 bf4 cs4
  }

bassVerseMusic = \relative c {
  \silence \sopranoAntiphonMusic
  f,\breve a4
  g\breve b1 c4
  cs\breve a1 cs4 d4
  bf\breve c1 e4 a,4
  }

verseLyrics = \markup {
  \vspace #5
  \override #'(font-family . sans)
  \override #'(font-size . 2)
  \fill-line {
    \left-column{
      \concat { \typewriter "1. " "Bénis le " Seigne \underline u r, " ô mon âme," }
      \concat { \typewriter "   " "bénis son nom très " s \underline a int, " tout mon être&nbsp;!" }
      \concat { \typewriter "   " "Bénis le " Seign \underline e ur, " ô mon âme," }
      \concat { \typewriter "   " "n’oublie " auc \underline u n " de ses bienfaits&nbsp;!" }
      \vspace #1
      \concat { \typewriter "2. " "Car il pardonne " to \underline u tes " tes offenses" }
      \concat { \typewriter "   " "et te guérit de " t \underline o ute " maladie;" }
      \concat { \typewriter "   " "il réclame ta " v \underline i e " à la tombe" }
      \concat { \typewriter "   " "et te couronne " d’am \underline o ur " et de tendresse." }
    }
    \hspace #1
    \left-column {
      \concat { \typewriter "3. " "Il n’est pas pour " toujo \underline u rs " en procès," }
      \concat { \typewriter "   " "ne maintient pas sans " f \underline i n " ses reproches;" }
      \concat { \typewriter "   " "il n’agit pas envers " n \underline o us " selon nos fautes," }
      \concat { \typewriter "   " "ne nous rend pas " sel \underline o n " nos offenses." }
      \vspace #1
      \concat { \typewriter "4. " "Comme le ciel " dom \underline i ne " la terre," }
      \concat { \typewriter "   " "fort est son " am \underline o ur " pour qui le craint;" }
      \concat { \typewriter "   " "aussi loin qu’est " l'or \underline i ent " de l’occident," }
      \concat { \typewriter "   " "il met loin de " n \underline o us " nos péchés." }
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