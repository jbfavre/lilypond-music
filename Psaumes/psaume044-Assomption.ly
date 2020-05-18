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

title = "Psaume 44"
subtitle = "Solennité de l'Assomption"
composer = "Jean Baptiste Favre"
dedicace = "Île d'Hœdic, août 2018"

global = {
  \key a \major
  \time 3/8
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoAntiphonMusic = \relative c' {
  \markCustom "Antienne"
  \partial 8 e8 e c d e e f! a (gs! f!) e4. \breathe d8 e e fs! fs e d cs! d e4. \fermata \bar "|." \break
  }

altoAntiphonMusic = \relative c' {
  \partial 8 s8 s4. s4. s4. s4. s4. s4. s4. s4.
  }

tenorAntiphonMusic =  \relative c' {
  \partial 8 s8 s4. s4. s4. s4. s4. s4. s4. s4.
  }

bassAntiphonMusic =  \relative c {
  \partial 8 s8 s4. s4. s4. s4. s4. s4. s4. s4.
  }

antiphonLyrics = \lyricmode {
  De -- bout, à la droi -- te du Sei -- gneur, se tient la rei -- ne, tou -- te pa -- rée d’or.
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
  e\breve f!4 d e \bar "||"
  e\breve a1 gs!4 f e \bar "||"
  d\breve fs1 e4 d e \bar "|."
  }

altoVerseMusic = \relative c' {
  \silence \sopranoAntiphonMusic
  s\breve s4 s s
  s\breve s1 s4 s s
  s\breve s1 s4 s s
  }

tenorVerseMusic = \relative c' {
  \silence \sopranoAntiphonMusic
  s\breve s4 s s
  s\breve s1 s4 s s
  s\breve s1 s4 s s
  }

bassVerseMusic = \relative c {
  \silence \sopranoAntiphonMusic
  a\breve f4 g c
  a\breve d1 e4 gs! a
  g,\breve d'1 b4 b a
  }

verseLyrics = \markup {
{
  \vspace #5
  \override #'(font-family . sans)
  \override #'(font-size . 2)
  \fill-line {
    \left-column{
      \concat { \typewriter "1. " "Écoute, ma fille, reg" \underline a "rde et tends l’oreille ;"}
      \concat { \typewriter "   " "oublie ton peuple et la mais" \underline o "n de ton père :"}
      \concat { \typewriter "   " "le roi sera sédu" \underline i "t par ta beauté."}
      \vspace #1
      \concat { \typewriter "2. " "Il est ton Seigneur : prosterne-t" \underline o "i devant lui."}
      \concat { \typewriter "   " "Alors, les plus r" \underline i "ches du peuple,"}
      \concat { \typewriter "   " "chargés de présents, quêter" \underline o "nt ton sourire."}
    }
    \hspace #1
    \left-column {
      \concat { \typewriter "3. " "Fille de roi, elle est l" \underline à ", dans sa gloire,"}
      \concat { \typewriter "   " "vêt" \underline u "e d’étoffes d’or ;"}
      \concat { \typewriter "   " "on la conduit, toute par" \underline é "e, vers le roi."}
      \vspace #1
      \concat { \typewriter "4. " "Des jeunes filles, ses compagnes, lui"}
      \concat { \typewriter "   " "  f" \underline o "nt cortège ;"}
      \concat { \typewriter "   " "on les conduit parmi les ch" \underline a "nts de fête :"}
      \concat { \typewriter "   " "elles " \underline e "ntrent au palais du roi."}
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