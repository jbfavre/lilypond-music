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

title = "Psaume 26"
subtitle = "Lundi de la Semaine Sainte"
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
  Le Sei -- gneur est ma lu -- mi -- ère et mon sa -- lut.
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
    \vspace #2
    \fill-line {
      \left-column{
        \concat { \typewriter "1. " "Le Seigneur est ma lumi" \underline è "re et mon salut&nbsp;;"}
        \concat { \typewriter "   " "de qu" \underline i "  aurais-je crainte&nbsp;?"}
        \concat { \typewriter "   " "Le Seigneur est le remp" \underline a "rt de ma vie&nbsp;;"}
        \concat { \typewriter "   " "devant qu" \underline i " tremblerais-je&nbsp;?"}
      }
      \hspace #1
      \left-column {
        \concat { \typewriter "2. " "Si des méchants s’av" \underline a "ncent contre moi"}
        \concat { \typewriter "   " "po" \underline u "r me déchirer,"}
        \concat { \typewriter "   " "ce sont eux, mes ennem" \underline i "s, mes adversaires,"}
        \concat { \typewriter "   " "qui perdent pi" \underline e "d et succombent."}
      }
    }
    \vspace #2
    \fill-line {
      \left-column {
        \concat { \typewriter "3. " "Qu’une armée se dépl" \underline o "ie devant moi,"}
        \concat { \typewriter "   " "mon cœ" \underline u "r est sans crainte&nbsp;;"}
        \concat { \typewriter "   " "que la bataille s’eng" \underline a "ge contre moi,"}
        \concat { \typewriter "   " "je g" \underline a "rde confiance."}
      }
      \hspace #1
      \left-column {
        \concat { \typewriter "4. " "J’en suis sûr, je verrai les bont" \underline é "s du Seigneur"}
        \concat { \typewriter "   " "sur la t" \underline e "rre des vivants."}
        \concat { \typewriter "   " "«&nbsp;Espère le Seigneur, sois f" \underline o "rt et prends courage&nbsp;;"}
        \concat { \typewriter "   " "esp" \underline è "re le Seigneur.&nbsp;»"}
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