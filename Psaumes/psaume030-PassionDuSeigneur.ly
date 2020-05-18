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

title = "Psaume 30"
subtitle = "Passion du Seigneur"
composer = "Jean Baptiste Favre"
dedicace = "Clichy la Garenne, 17 Mars 2018"

global = {
  \key d \minor
  \time 4/4
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoAntiphonMusic = \relative c' {
  \markCustom "Antienne"
  \partial 4 d4 a'2 g4 a f2 e4 f g2 f4 e d2 \fermata \bar "|." \break
  }

altoAntiphonMusic = \relative c' {
  \partial 4 bf4 f'2 e4 e d2 d4 d d2 d4 d8 (c) a2 \fermata
  }

tenorAntiphonMusic =  \relative c' {
  \partial 4 g4 a2 g4 c bf2 bf4 a bf2 a4 a f2 \fermata
  }

bassAntiphonMusic =  \relative c {
  \partial 4 e4 d4 c bf a bf'4 (a) g4 e f2 g4 a d,2 \fermata
  }

antiphonLyrics = \lyricmode {
    Ô Père, en tes mains je re -- mets mon es -- prit.
  }
sopranoAntiphonLyrics = \antiphonLyrics
altoAntiphonLyrics = \antiphonLyrics
tenorAntiphonLyrics = \antiphonLyrics
bassAntiphonLyrics = \lyricmode {
    Ô Pè -- re, en tes mains je re -- mets mon es -- prit.
  }


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%          Verses          %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoVerseMusic = \relative c' {
  \silence \sopranoAntiphonMusic
  \markCustom "Psalmodie par verset" \cadenzaOn
  f\breve g1 a4 \bar "||"
  f\breve e1 e4 e d \bar "|."
  }

altoVerseMusic = \relative c' {
  \silence \sopranoAntiphonMusic
  d\breve d1 e4
  d\breve d1 d4 c a
  }

tenorVerseMusic = \relative c' {
  \silence \sopranoAntiphonMusic
  a\breve bf1 c4
  bf\breve bf1 a4 a f
  }

bassVerseMusic = \relative c {
  \silence \sopranoAntiphonMusic
  d\breve bf1 a4
  bf\breve g1 a4 a d
  }

verseLyrics = \markuplist {
  \vspace #5
  \override #'(font-family . sans)
  \override #'(font-size . 2)
  \column {
    \fill-line {
      \left-column {
        \concat { \typewriter "1. " "En toi, Seigne" \underline u "r, j’ai mon refuge&nbsp;;"}
        \concat { \typewriter "   " "garde-moi d’être humili" \underline é " pour toujours."}
        \concat { \typewriter "   " "En tes mains je rem" \underline e "ts mon esprit&nbsp;;"}
        \concat { \typewriter "   " "tu me rachètes, Seigneur, Die" \underline u " de vérité."}
        \vspace #1
        \concat { \typewriter "2. " "Je suis la ris" \underline é "e de mes adversaires"}
        \concat { \typewriter "   " "et m" \underline ê "me de mes voisins&nbsp;;"}
        \concat { \typewriter "   " "je fais pe" \underline u "r à mes amis,"}
        \concat { \typewriter "   " "s’ils me voient dans la r" \underline u "e, ils me fuient."}
      }
      \hspace #1
      \left-column {
        \vspace #1
        \concat { \typewriter "3. " "On m’ignore comme un m" \underline o "rt oublié,"}
        \concat { \typewriter "   " "comme une ch" \underline o "se qu’on jette."}
        \concat { \typewriter "   " "J’entends les calomn" \underline i "es de la foule&nbsp;:"}
        \concat { \typewriter "   " "ils s’accordent pour m’ôt" \underline e "r la vie."}
        \vspace #1
        \concat { \typewriter "4. " "Moi, je suis sûr de t" \underline o "i, Seigneur,"}
        \concat { \typewriter "   " "je dis : «&nbsp;Tu " \underline e "s mon Dieu&nbsp;!&nbsp;»"}
        \concat { \typewriter "   " "Mes jours sont dans ta m" \underline a "in&nbsp;: délivre-moi"}
        \concat { \typewriter "   " "des mains host" \underline i "les qui s’acharnent."}
      }
    }
    \vspace #1
    \fill-line {
      \left-column {
        \concat { \typewriter "5. " "Sur ton serviteur, que s’illum" \underline i "ne ta face&nbsp;;"}
        \concat { \typewriter "   " "sauve-m" \underline o "i par ton amour."}
        \concat { \typewriter "   " "Soyez f" \underline o "rts, prenez courage,"}
        \concat { \typewriter "   " "vous tous qui espér" \underline e "z le Seigneur&nbsp;!"}
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