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

title = "Psaume 117-2"
subtitle = "Deuxième dimanche de Pâques - Année A"
composer = "Jean Baptiste Favre"
dedicace = "Clichy la Garenne, octobre 2017"

global = {
  \key c \major
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoAntiphonMusic = \relative c' {
  \markCustom "Antienne"
  d4 e f2 e4 f g2 b4 b a2 \breathe a4 g c b a g a2 \fermata \bar "|." \break
  }

altoAntiphonMusic = \relative c' {
  }

tenorAntiphonMusic =  \relative c' {
  }

bassAntiphonMusic =  \relative c {
  }

antiphonLyrics = \lyricmode {
  Ren -- dez grâ -- ce~au Sei -- gneur&nbsp;: Il est bon&nbsp;!
  É -- ter -- nel est son a -- mour&nbsp;!
  }

sopranoAntiphonLyrics = \antiphonLyrics
altoAntiphonLyrics = \antiphonLyrics
tenorAntiphonLyrics = \antiphonLyrics
bassAntiphonLyrics = \antiphonLyrics

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%          Verses          %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% quand on a fini de rentrer la musique partout, on peut préciser
% (chez les Soprano uniquement!) les paramètres de tempo MIDI
% en utilisant \tAcce et \tRall

sopranoVerseMusic = \relative c'' {
  \silence \sopranoAntiphonMusic
  \markCustom "Psalmodie par verset" \cadenzaOn
  a\breve c1 b2 \bar "||"
  g\breve f1 a2 \bar "|."
  }

altoVerseMusic = \relative c' {
  }

tenorVerseMusic = \relative c' {
  }

bassVerseMusic = \relative c {
  }

verseLyrics = \markup {
  \override #'(font-family . sans)
  \override #'(font-size . 2)
  \column {
    \fill-line {
      \left-column{
        \concat { \typewriter "1. " "Oui, que le " d \underline i se" "Israël&nbsp;: }
        \concat { \typewriter "   " "Étern" \underline e l" "est" "son" "amour&nbsp;!" " \super &plus; }
        \concat { \typewriter "   " "Que le dise la " mais \underline on" "d’Aaron&nbsp;: }
        \concat { \typewriter "   " "Étern" \underline e l" "est" "son" "amour&nbsp;!" " \super * }
        \concat { \typewriter "   " "Qu’ils le disent, ceux qui " cr \underline a ignent" "le" "Seigneur&nbsp;: }
        \concat { \typewriter "   " "Étern" \underline e l" "est" "son" "amour&nbsp;! }
      }
      \hspace #1
      \left-column {
        \concat { \typewriter "2. " "On m’a poussé, " bouscul \underline é " "pour" "m’abattre; }
        \concat { \typewriter "   " "mais le " Seign \underline e ur" "m’a" "défendu. }
        \concat { \typewriter "   " "Ma force et mon " ch \underline a nt," "c’est" "le" "Seigneur; }
        \concat { \typewriter "   " "il est pour " m \underline o i" "le" "salut. }
        \concat { \typewriter "   " "Clameurs de j" \underline o "ie et de victoire" }
        \concat { \typewriter "   " "sous les t" \underline e "ntes des justes." }
      }
    }
    \vspace #1
    \fill-line {
      \left-column{
        \concat { \typewriter "3. " "La pierre qu’ont rejet" \underline é "e les bâtisseurs" }
        \concat { \typewriter "   " "est devenue la p" \underline i "erre d’angle&nbsp;;" }
        \concat { \typewriter "   " "c’est là l’œ" \underline u "vre du Seigneur," }
        \concat { \typewriter "   " "la merv" \underline e "ille devant nos yeux." }
        \concat { \typewriter "   " "Voici le j" \underline o "ur que fit le Seigneur," }
        \concat { \typewriter "   " "qu’il soit pour nous jour de f" \underline ê "te et de joieanbsp;!" }
      }
    }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%          Draw score          %%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Load Piano settings & layout
\include "../libs/defaultPianoSettings.ly"
\include "../libs/layouts/commonSettings.ily"

% Ajust this setting to get a single page psalm
staffCustomSize = 18
% Ajust this setting to get a single page psalm
staffSize = 17

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