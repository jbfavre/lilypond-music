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
subtitle = "Vendredi Saint"
composer = "Jean Baptiste Favre"
dedicace = "Clichyla Garenne, avril 2021"

global = {
  \key d \minor
  \time 2/4
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoAntiphonMusic = \relative c' {
  \markCustom "Antienne"
  \partial 4 d a'8 a8 \breathe g8 f e4 \breathe
  f8 g a4 (g) g8 (f) f (e) d2 \fermata \bar "|." \break
  }

altoAntiphonMusic = \relative c' {
  d4 f8 f \breathe e8 d cs4 \breathe
  d8 e8 f4 (e) d4 d8 cs d2
  }

tenorAntiphonMusic =  \relative c' {
  d4 d8 d \breathe bf8 b a4 \breathe
  a8 c8 c4 (bf) a4 a8 g f2
  }

bassAntiphonMusic =  \relative c {
  d4 d8 d \breathe g8 gs a4 \breathe
  d,8 c f4 (g) a4 a, d2 \fermata
  }

antiphonLyrics = \lyricmode {
  Ô Pè -- re, dans tes mains, je re -- mets mon es -- prit.
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
  f\breve f1 e4 \bar "||"
  a\breve g4 \bar "||"
  bf\breve a4 \bar "||"
  a\breve gs1 a4
  \bar "|." \break
  \markCustom "Psalmodie par verset" \cadenzaOn
  f\breve g1 a4 \bar "||"
  e\breve e1 f4
  \bar "|."
  }
sopranoVerseRepons = \lyricmode {}
altoVerseMusic = \relative c' {
  \silence \sopranoAntiphonMusic
  d\breve d1 cs4
  f\breve e4
  g\breve f4
  f\breve e1 e4
  d\breve e1 f4
  d\breve cs!1 d4
  }

tenorVerseMusic = \relative c' {
  \silence \sopranoAntiphonMusic
  a\breve bf1 a4
  c\breve c4
  d\breve d4
  d\breve d1 cs4
  a\breve c1 c4
  bf\breve a1 a4
  }

bassVerseMusic = \relative c {
  \silence \sopranoAntiphonMusic
  d\breve g1 a4
  f\breve c'4
  g\breve d'4
  bf,\breve bf1 a4
  d\breve c1 f4
  g\breve a,1 d4
  }

verseLyrics = \markuplist {
  \override #'(font-family . sans)
  \override #'(font-size . 2)
  \column {
    \fill-line {
      \left-column{
        \concat { \typewriter "1. " "En toi Seigne" \underline u "r j'ai mon refuge&nbsp;;"}
        \concat { \typewriter "   " "garde-moi d'être humili" \underline é " pour toujours."}
        \concat { \typewriter "   " "En tes mains je rem" \underline e "ts mon esprit&nbsp;;"}
        \concat { \typewriter "   " "tu me rachètes, Seigneur, Die" \underline u " de vérité."}
      }
      \hspace #1
      \left-column {
        \concat { \typewriter "2. " "Je suis la ris" \underline é "e de mes adversaires"}
        \concat { \typewriter "   " "et m" \underline ê "me de mes voisins&nbsp;"}
        \concat { \typewriter "   " "je fais pe" \underline u "r à mes amis,"}
        \concat { \typewriter "   " "s'ils me voient dans la r" \underline u "e, ils me fuient."}
      }
    }
    \vspace #1
    \fill-line {
      \left-column {
        \concat { \typewriter "3. " "On m'ignore comme un m" \underline o "rt oublié,"}
        \concat { \typewriter "   " "comme un ch" \underline o "se qu'on jette."}
        \concat { \typewriter "   " "J'entends les calomn" \underline i "es de la foule&nbsp;;"}
        \concat { \typewriter "   " "ils s'accordent pour m'ôt" \underline e "r la vie."}
      }
      \hspace #1
      \left-column {
        \concat { \typewriter "4. " "Moi, je suis sûr de t" \underline o "i, Seigneur,"}
        \concat { \typewriter "   " "je dis: «&nbsp; Tu " \underline e "s mon Dieu&nbsp;!&nbsp;»"}
        \concat { \typewriter "   " "Mes jours sont ta m" \underline a "in&nbsp;:délivre-moi"}
        \concat { \typewriter "   " "des mains host" \underline i "les qui s'acharnent."}
      }
    }
    \vspace #1
    \fill-line {
      \left-column {
        \concat { \typewriter "5. " "Sur ton serviteur, que s'illum" \underline i "ne ta face&nbsp;;"}
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
staffCustomSize = 16
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
\verseLyrics