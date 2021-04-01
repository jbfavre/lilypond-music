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

title = "Psaume 70"
subtitle = "Mardi de la Semaine Sainte"
composer = "Jean Baptiste Favre"
dedicace = "Clichyla Garenne, avril 2021"

global = {
  \key f \minor
  \time 2/4
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoAntiphonMusic = \relative c' {
  \markCustom "Antienne"
  \partial 4 f af af g f bf af g \breathe
  e f g af af g2 g f \fermata \bar "|." \break
  }

altoAntiphonMusic = \relative c' {
  f4 f4 df8 f e4 c f f e \breathe
  c4 df df f f f2 e c2
  }

tenorAntiphonMusic =  \relative c {
  f4 c'4. bf8 bf4 af bf df df4 (c8) \breathe bf
  af4 bf c c df2 (df4) c8 (bf) af2 \fermata
  }

bassAntiphonMusic =  \relative c {
  f4 f f c4 f8 (ef) df (c) bf4 c \breathe
  c4 df8 (c) bf4 f f'8 (ef) bf2 c f \fermata
  }

antiphonLyrics = \lyricmode {
  Ma bou -- che an -- non -- ce ton sa -- lut, Sei -- gneur.
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
  \bar "||"
  \bar "|."
  }
sopranoVerseRepons = \lyricmode {}
altoVerseMusic = \relative c'' {
  \silence \sopranoAntiphonMusic
  }

tenorVerseMusic = \relative c' {
  \silence \sopranoAntiphonMusic
  }

bassVerseMusic = \relative c {
  \silence \sopranoAntiphonMusic
  }

verseLyrics = \markuplist {
  \override #'(font-family . sans)
  \override #'(font-size . 2)
  \column {
    \fill-line {
      \left-column{
        \concat { \typewriter "1. " "En toi, Seigne" \underline u "r, j’ai mon refuge&nbsp;:"}
        \concat { \typewriter "   " "garde-moi d’être humili" \underline é " pour toujours."}
        \concat { \typewriter "   " "Dans ta justice, défends-m" \underline o "i, libère-moi,"}
        \concat { \typewriter "   " "tends l’oreille vers m" \underline o "i, et sauve-moi."}
      }
      \hspace #1
      \left-column {
        \concat { \typewriter "2. " "Sois le roch" \underline e "r qui m’accueille,"}
        \concat { \typewriter "   " "toujo" \underline u "rs accessible&nbsp;;"}
        \concat { \typewriter "   " "tu as résol" \underline u " de me sauver&nbsp;:"}
        \concat { \typewriter "   " "ma forteresse et mon r" \underline o "c, c’est toi&nbsp;!"}
      }
    }
    \vspace #2
    \fill-line {
      \left-column {
        \concat { \typewriter "3. " "Seigneur mon Dieu, tu " \underline e "s mon espérance,"}
        \concat { \typewriter "   " "Toi, mon soutien dès av" \underline a "nt ma naissance,"}
        \concat { \typewriter "   " "tu m’as choisi dès le v" \underline e "ntre de ma mère&nbsp;;"}
        \concat { \typewriter "   " "tu seras ma lou" \underline a "nge toujours&nbsp;!"}
      }
      \hspace #1
      \left-column {
        \concat { \typewriter "4. " "Ma bouche ann" \underline o "nce tout le jour"}
        \concat { \typewriter "   " "tes actes de just" \underline i "ce et de salut&nbsp;;"}
        \concat { \typewriter "   " "Mon Dieu, tu m’as instru" \underline i "t dès ma jeunesse,"}
        \concat { \typewriter "   " "jusqu’à présent, j’ai proclam" \underline é " tes merveilles."}
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