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
  \partial 8 b8 b b g a b4 g d'8 d c c b b a g a2 b2  \fermata \bar "|." \break
  \markCustom "Antienne 2"
  b4 g8 (a) b8 b g g d'4 (c) b8 b a (g) a2 b2 \fermata \bar "|." \break
  }

altoAntiphonMusic = \relative c' {
  \partial 8 s8 \repeat unfold 6 { s2 } \repeat unfold 6 { s2 }
  }

tenorAntiphonMusic =  \relative c' {
  \partial 8 s8 \repeat unfold 6 { s2 } \repeat unfold 6 { s2 }
  }

bassAntiphonMusic =  \relative c {
  \partial 8 s8 \repeat unfold 6 { s2 } \repeat unfold 6 { s2 }
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
  b\breve s1 s4 \bar "|"
  b\breve s1 s4 \bar "||" \break
  \markCustom "Psalmodie par strophe"
  b\breve s1 s4 \bar "|"
  b\breve s1 s4 \bar "|"
  b\breve s1 s4 \bar "|"
  b\breve s1 s4 \bar "||"
  }

altoVerseMusic = \relative c'' {
  \silence \sopranoAntiphonMusic
  b\breve s1 s4
  b\breve s1 s4

  b\breve s1 s4
  b\breve s1 s4
  b\breve s1 s4
  b\breve s1 s4
  }

tenorVerseMusic = \relative c' {
  \silence \sopranoAntiphonMusic
  b\breve s1 s4
  b\breve s1 s4

  b\breve s1 s4
  b\breve s1 s4
  b\breve s1 s4
  b\breve s1 s4
  }

bassVerseMusic = \relative c {
  \silence \sopranoAntiphonMusic
  b\breve s1 s4
  b\breve s1 s4

  b\breve s1 s4
  b\breve s1 s4
  b\breve s1 s4
  b\breve s1 s4
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
\include "../libs/defaultPianoSettings.ly"
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
\verseLyrics