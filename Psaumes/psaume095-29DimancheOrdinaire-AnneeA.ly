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

title = "Psaume 95-2"
subtitle = "29e dimanche du Temps Ordinaire - Année A"
composer = "Jean Baptiste Favre"
dedicace = "Clichy la Garenne, 25 novembre 2017"

global = {
  \key e \major
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoAntiphonMusic = \relative c' {
  \markCustom "Antienne"
  gs'4 b b8 a8 gs4. \breathe e8 fs gs a gs fs2 gs2 \fermata \bar "|." \break
  }

altoAntiphonMusic = \relative c' {
  b4 ds ds8 fs e4 \breathe b4 cs8 e e e cs4 (ds) e2 \fermata
  }

tenorAntiphonMusic =  \relative c' {
  e,4 fs fs8 ds8 gs4 \breathe gs4 a8 b cs cs a4 <a cs> <gs b>2 \fermata
  }

bassAntiphonMusic =  \relative c {
  e4 b b8 bs8 cs4 \breathe b4 a8 gs fs16 a cs8 a4 (b) e,2 \fermata
  }

antiphonLyrics = \lyricmode {
  Ren -- dez au Sei -- gneur la gloi -- re~et la puis -- san -- ce
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
  b\breve cs1 b4 \bar "||"
  b\breve a1 gs4 gs fs \bar "||"
  gs\breve a1 gs4 fs e \bar "||"
  e\breve a1 gs4 e fs \bar "|."
  }

altoVerseMusic = \relative c'' {
  \silence \sopranoAntiphonMusic
  gs\breve e1 es4
  es!\breve cs1 e4 e ds
  ds\breve ds1 ds4 ds cs
  cs\breve e1 e4 cs4 ds
  }

tenorVerseMusic = \relative c' {
  \silence \sopranoAntiphonMusic
  b\breve a1 cs4
  gs\breve a1 b4 cs b
  gs\breve bs1 bs4 gs gs
  a\breve cs1 b4 gs b
  }

bassVerseMusic = \relative c {
  \silence \sopranoAntiphonMusic
  e\breve a1 gs4
  cs,\breve fs1 e!4 e b
  bs\breve gs1 gs4 bs cs8[ \parenthesizeAll b8]
  a\breve fs'1 e4 cs b
  }

verseLyrics = \markup {
  \vspace #5
  \override #'(font-family . sans)
  \override #'(font-size . 1.9)
  \fill-line {
    \left-column{
      \concat { \typewriter "1. " "Chantez au Seigne" \underline u "r un chant nouveau,"}
      \concat { \typewriter "   " "chantez au Seigne" \underline u "r, terre entière,"}
      \concat { \typewriter "   " "racontez à tous les pe" \underline u "ples sa gloire,"}
      \concat { \typewriter "   " "à toutes les nati" \underline o "ns ses merveilles&nbsp;!"}
      \vspace #1
      \concat { \typewriter "2. " "Il est grand, le Seigne" \underline u "r, hautement loué,"}
      \concat { \typewriter "   " "redoutable au-dess" \underline u "s de tous les dieux&nbsp;:"}
      \concat { \typewriter "   " "néant, tous les die" \underline u "x des nations&nbsp;!"}
      \concat { \typewriter "   " "Lui, le Seigne" \underline u "r, a fait les cieux."}
    }
    \hspace #1
    \left-column {
      \concat { \typewriter "3. " "Rendez au Seigne" \underline u "r, familles des peuples,"}
      \concat { \typewriter "   " "rendez au Seigneur la glo" \underline i "re et la puissance,"}
      \concat { \typewriter "   " "rendez au Seigneur la glo" \underline i "re de son nom."}
      \concat { \typewriter "   " "Apportez votre offr" \underline a "nde, entrez dans ses parvis."}
      \vspace #1
      \concat { \typewriter "4. " "Adorez le Seigne" \underline u "r, éblouissant de sainteté&nbsp;:"}
      \concat { \typewriter "   " "tremblez devant " lu \underline i ", terre entière."}
      \concat { \typewriter "   " "Allez dire aux nations&nbsp;: «&nbsp;Le Seigne" \underline u "r est roi&nbsp;!&nbsp;»"}
      \concat { \typewriter "   " "Il gouverne les pe" \underline u "ples avec droiture."}
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