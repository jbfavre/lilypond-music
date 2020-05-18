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
antiphonRhythms = {}
antiphonFiguredHarmony = {}
antiphonFiguredBass = {}
verseFiguredHarmony = {}

title = "Psaume 111-1"
subtitle = "5ème Dimanche du Temps Ordinaire"
composer = "Jean Baptiste Favre"
dedicace = "Clichy la Garenne, février 2020"

global = {
  \time 2/4
  \key e \minor
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoAntiphonMusic = \relative c'' {
  \markCustom "Antienne"
  \partial 8 b8 b b g a b4 b d8 d c c b b a g a2 b2 \fermata \bar "|." \break
  \markCustom "Antienne 2"
  b4 g8 (a) b4 b d4 c b8 b a (g) g8 (a4) a8 b2 \fermata \bar "|." \pageBreak
  }

altoAntiphonMusic = \relative c'' {
  \partial 8 b8 g g g fs g4 g fs8 fs e fs g g fs g e4 (fs) d2 \fermata
  g4 g8 (fs) g4 g fs e8 fs g4 fs8 g e4 (fs) d2 \fermata
  }

tenorAntiphonMusic =  \relative c' {
  \partial 8 b8 d d d d d4 e d8 b a a d d d d c2 b2 \fermata
  d4 d d4 e d8 (b) a4 d8 d d4 c4 c4 b2 \fermata
  }

bassAntiphonMusic =  \relative f {
  \partial 8 g8 g g b a g4 e b8 b c d g g, a b c4 (d) g2 \fermata
  g4 b8 (a) g4 e b c8 d g g, a (b) c4 (d) g2 \fermata
  }

antiphonLyrics = \lyricmode {
  Lu -- miè -- re des cœurs droits, le ju -- ste s'est le -- vé dans les té -- nè -- bres.
  Al -- le -- lú -- ia, Al -- le -- lú -- ia, Al -- le -- lú -- ia&nbsp;!
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
  b\breve g4 a b \bar "|"
  c\breve b1 a4 g a \bar "||" \break
  \markCustom "Psalmodie par strophe"
  b\breve g4 a b \bar "|"
  b\breve b1 a4 g a \bar "|"
  c\breve a4 b c \bar "|"
  c\breve b1 a4 g a \bar "||"
  }

altoVerseMusic = \relative c'' {
  \silence \sopranoAntiphonMusic
  g\breve g4 fs g
  fs\breve g1 e4 e fs

  g\breve g4 fs g
  fs\breve g1 e4 e fs
  a\breve g4 gs a
  fs\breve g1 e4 e fs
  }

tenorVerseMusic = \relative c' {
  \silence \sopranoAntiphonMusic
  d\breve d4 d d
  d\breve d1 c4 b d

  d\breve d4 d d
  d\breve b1 c4 b d
  e\breve e4 e e
  d\breve d1 c4 b d
  }

bassVerseMusic = \relative f {
  \silence \sopranoAntiphonMusic
  g,\breve b4 a g
  a\breve g1 c4 e d

  g\breve b4 a g
  b,\breve e1 c4 e d
  a\breve c4 b a
  a\breve g1 c4 e d
  }
verseLyrics = \markup {
  \vspace #3
  \override #'(font-family . sans)
  \override #'(font-size . 2)
  \fill-line {
    \column{
      \concat { \typewriter "1. " "Lumière des cœurs droits, il s’est lev" \underline é " dans les ténèbres," }
      \concat { \typewriter "   " "homme de justice, de tendr" \underline e "sse et de pitié." }
      \concat { \typewriter "   " "L’homme de bien a piti" \underline é ", il partage&nbsp;;" }
      \concat { \typewriter "   " "il mène ses aff" \underline a "ires avec droiture." }
      " "
      \concat { \typewriter "2. " "Cet homme jam" \underline a "is ne tombera&nbsp;;" }
      \concat { \typewriter "   " "toujours on fera mém" \underline o "ire du juste." }
      \concat { \typewriter "   " "Il ne craint pas l’ann" \underline o "nce d’un malheur&nbsp;:" }
      \concat { \typewriter "   " "le cœur ferme, il s’appu" \underline i "e sur le Seigneur." }
      " "
      \concat { \typewriter "3. " "Son cœur est confi" \underline a "nt, il ne craint pas." }
      \concat { \typewriter "   " "À pleines mains, il d" \underline o "nne au pauvre&nbsp;;" }
      \concat { \typewriter "   " "à jamais se maintiendr" \underline a " sa justice," }
      \concat { \typewriter "   " "sa puissance grandir" \underline a ", et sa gloire&nbsp;!" }
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
    %\pageBreak
    % Psalmodie à 4 voix mixtes
    \include "../libs/layouts/commonVerseFourVoices.ily"
    %\new FiguredBass { \figuredBass \verseFiguredBass }
    %\new FiguredBass { \harmony \verseHarmony }
  >>
}
% Load PDF output
\include "../libs/layouts/outputPDF.ily"
\verseLyrics