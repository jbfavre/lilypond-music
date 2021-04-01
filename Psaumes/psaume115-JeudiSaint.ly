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

title = "Psaume 115"
subtitle = "Jeudi Saint"
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
  f4 f4 df4 c4 c f f e \breathe
  c4 df df c df8 (ef) f2 e c2
  }

tenorAntiphonMusic =  \relative c {
  f4 c'4. bf8 bf4 af bf df (df4) c8 \breathe bf
  af4 bf c2 df (df4) c8 bf af2 \fermata
  }

bassAntiphonMusic =  \relative c {
  f4 f f e4 f8 (ef) df (c) bf4 c \breathe
  c4 df8 (c) bf4 f'4. ef8 bf2 c f \fermata
  }

antiphonLyrics = \lyricmode {
  La cou -- pe de bé -- né -- dic -- tion est com -- mu -- nion au sang du Christ.
  }

sopranoAntiphonLyrics = \antiphonLyrics
altoAntiphonLyrics = \lyricmode {
  La cou -- pe de bé -- né -- dic -- ti -- on est com -- mu -- nion au sang du Christ.
  }
tenorAntiphonLyrics = \antiphonLyrics
bassAntiphonLyrics = \antiphonLyrics

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%          Verses          %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoVerseMusic = \relative c' {
  \silence \sopranoAntiphonMusic
  \markCustom "Psalmodie par strophe" \cadenzaOn
  f\breve g1 af4 \bar "||"
  bf\breve af1 g4 \bar "||"
  af\breve bf1 c4 \bar "||"
  bf\breve af1 g4 \bar "|."
  }
sopranoVerseRepons = \lyricmode {}
altoVerseMusic = \relative c' {
  \silence \sopranoAntiphonMusic
  c\breve c1 c4
  f\breve f1 e4
  f\breve g1 af4
  g\breve f1 e!4
  }

tenorVerseMusic = \relative c' {
  \silence \sopranoAntiphonMusic
  af\breve c1 c4
  df\breve c1 c4
  c\breve ef1 ef4
  c\breve c1 c4
  }

bassVerseMusic = \relative c {
  \silence \sopranoAntiphonMusic
  f\breve e1 f4
  bf,\breve f1 c'4
  f\breve ef1 af4
  e\breve f1 c'4
  }

verseLyrics = \markuplist {
  \override #'(font-family . sans)
  \override #'(font-size . 2)
  \column {
    \fill-line {
      \left-column{
        \concat { \typewriter "1. " "Comment rendr" \underline a "i-je au Seigneur"}
        \concat { \typewriter "   " "tout le bi" \underline e "n qu'il m'a fait&nbsp;?"}
        \concat { \typewriter "   " "J'élèverai la co" \underline u "pe du salut,"}
        \concat { \typewriter "   " "j'invoquerai le n" \underline o "m du Seigneur."}
      }
      \hspace #1
      \left-column {
        \concat { \typewriter "2. " "Il en co" \underline û "te au Seigneur"}
        \concat { \typewriter "   " "de voir mour" \underline i "r les siens&nbsp;!"}
        \concat { \typewriter "   " "Ne suis-je pas, Seigne" \underline u "r, ton serviteur,"}
        \concat { \typewriter "   " "moi, dont tu bris" \underline a "s les chaînes."}
      }
    }
    \vspace #1
    \fill-line {
      \left-column {
        \concat { \typewriter "3. " "Je t'offrirai le sacrif" \underline i "ce d'action de grâce,"}
        \concat { \typewriter "   " "j'invoquerai le n" \underline o "m du Seigneur."}
        \concat { \typewriter "   " "Je tiendrai mes prom" \underline e "sses au Seigneur,"}
        \concat { \typewriter "   " "oui, devant to" \underline u "t son peuple."}
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