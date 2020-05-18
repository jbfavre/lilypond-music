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

title = "Psaume 102-4"
subtitle = "7e dimanche du Temps Ordinaire - Année C"
composer = "Jean Baptiste Favre"
dedicace = "Clichy la Garenne, février 2019"

global = {
  \key f \major
  \time 2/4
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoAntiphonMusic = \relative c' {
  \markCustom "Antienne"
  \partial 4 e8 e f4 g8 a bf (a) g g f2 \fermata \bar "|." \break
  }

altoAntiphonMusic = \relative c' {
  \partial 4 e8 cs d4 e8 f f (f) f e c2 \fermata
  }

tenorAntiphonMusic =  \relative c' {
  \partial 4 a8 a a4 d8 c d (d) bf bf a2 \fermata
  }

bassAntiphonMusic =  \relative c {
  \partial 4 cs8 a d (c) bf a g (bf) c c f,2 \fermata
  }

antiphonLyrics = \lyricmode {
  Le Sei -- gneur est ten -- dresse et pi -- tié.
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
  a\breve bf1 a4 \bar "||"
  f\breve f1 g4 \bar "||"
  c\breve bf1 a4 \bar "||"
  f\breve bf1 a4 \bar "|."
  }

altoVerseMusic = \relative c' {
  \silence \sopranoAntiphonMusic
  c\breve e1 f4
  d\breve d1 e4
  a\breve g1 f4
  d\breve e1 e4
  }

tenorVerseMusic = \relative c' {
  \silence \sopranoAntiphonMusic
  a\breve d1 d4 
  bf\breve bf1 bf4
  c\breve e1 d4 
  d\breve d1 cs4
  }

bassVerseMusic = \relative c {
  \silence \sopranoAntiphonMusic
  f\breve g1 d4
  bf\breve g1 c4
  f\breve g1 d4
  bf\breve g1 a4
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
    \left-column{
      \concat { \typewriter "3. " "Le Seigneur est " tendr \underline e sse " et pitié," }
      \concat { \typewriter "   " "lent à la " col \underline è re " et plein d’amour&nbsp;;" }
      \concat { \typewriter "   " "il n’agit pas envers " no \underline u s " selon nos fautes," }
      \concat { \typewriter "   " "ne nous rend pas " sel \underline o n " nos offenses." }
      \vspace #1
      \concat { \typewriter "4. " "Aussi loin qu’est " l’ori \underline e nt " de l’occident," }
      \concat { \typewriter "   " "il met loin de " no \underline u s " nos péchés&nbsp;;" }
      \concat { \typewriter "   " "comme la tendresse du " p \underline è re " pour ses fils," }
      \concat { \typewriter "   " "la tendresse du " Seigne \underline u r " pour qui le craint&nbsp;!" }
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