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

title = "Psaume 111"
subtitle = \markup { \column { "Mémoire de Saint Vincent de Paul" "Liturgie des Saints, Diocèse de Nanterre" }}
composer = "Jean Baptiste Favre"
dedicace = "Clichy la Garenne, septembre 2019"

global = {
  \key g \major
  \time 3/4
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoAntiphonMusic = \relative c' {
  \markCustom "Antienne"
  \partial 4 d4 g2 g4 a g a b2 \breathe g4 a2 a4 g2 fs4 g2. (g2.) \fermata \bar "|." \break
  }

altoAntiphonMusic = \relative c' {
  \partial 4 a4 d2 e4 d4 e fs fs2 \breathe e4 e2 e4 d2 a4 d2. (d2.) \fermata
  }

tenorAntiphonMusic =  \relative c {
  \partial 4 fs4 g2 b4 d b d b2 \breathe b4 c2. a2 c4 c4 (b) a b2. \fermata
  }

bassAntiphonMusic =  \relative c {
  \partial 4 d4 b2 e4 fs e d ds2 \breathe e4 c2 a4 d2 d4 g,2. (g2.) \fermata
  }

antiphonLyrics = \lyricmode {
  Heu -- reux, qui craint le Sei -- gneur, et mar -- che dans ses voies.
  }

sopranoAntiphonLyrics = \antiphonLyrics
altoAntiphonLyrics = \antiphonLyrics
tenorAntiphonLyrics = \antiphonLyrics
bassAntiphonLyrics = \tenorAntiphonLyrics

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%          Verses          %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoVerseMusic = \relative c'' {
  \silence \sopranoAntiphonMusic
  \markCustom "Psalmodie par strophe" \cadenzaOn
  g4 a b \bar ".|"
  b\breve a4 \bar "||"
  b\breve a4 g \bar "||"
  a\breve g4 a \bar "|."
  }

altoVerseMusic = \relative c' {
  \silence \sopranoAntiphonMusic
  d d d
  d\breve fs4
  fs\breve fs4 e
  e\breve e4 fs
  }

tenorVerseMusic = \relative c' {
  \silence \sopranoAntiphonMusic
  b b g4
  g\breve a4
  b\breve b4 b
  c\breve b4 d?
  }

bassVerseMusic = \relative c' {
  \silence \sopranoAntiphonMusic
  g, g g
  g\breve d'4
  ds\breve ds!4 e
  c\breve e4 d?
  }

verseLyrics = \markup {
  \override #'(font-family . sans)
  \override #'(font-size . 2)
  \column {
    \fill-line {
      \left-column{
        \concat { \typewriter "1. " "Heureux qui craint le Seigneur,"}
        \concat { \typewriter "   " "qui aime entièrement sa volonté&nbsp;!"}
        \concat { \typewriter "   " "sa lignée sera présente sur la terre."}
        \vspace #1
        \concat { \typewriter "2. " "À jamais se maintiendra sa justice."}
        \concat { \typewriter "   " "Lumière des cœurs droits, il s'est levé"}
        \concat { \typewriter "   " "  dans les ténèbres,"}
        \concat { \typewriter "   " "homme de justice, de tendresse et de pitié."}
      }
      \hspace #1
      \left-column {
        \concat { \typewriter "3. " "L'homme de bien a pitié, il partage&nbsp;;"}
        \concat { \typewriter "   " "il mène ses affaires avec droiture."}
        \concat { \typewriter "   " "Cet homme jamais ne tombera."}
        \vspace #1
        \concat { \typewriter "4. " "Il ne craint pas l'annonce d'un malheur&nbsp;:"}
        \concat { \typewriter "   " "le cœur ferme, il s'appuie sur le Seigneur."}
        \concat { \typewriter "   " "Son cœur est confiant, il ne craint pas."}
      }
    }
    \vspace #1
    \fill-line {
      \left-column{
        \concat { \typewriter "5. " "À pleine main, il donne au pauvre&nbsp;;"}
        \concat { \typewriter "   " "à jamais se maintiendra sa justice,"}
        \concat { \typewriter "   " "sa puissance grandira, et sa gloire&nbsp;!"}
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