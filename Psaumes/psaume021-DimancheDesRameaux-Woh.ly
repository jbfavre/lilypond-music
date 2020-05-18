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

title = "Psaume 21"
subtitle = "Dimanche des Rameaux, Passion du Seigneur"
composer = \markup { \column { "Jean Baptiste Favre" "Benjamin Woh" }}

dedicace = "Clichy la Garenne, mars 2019"

global = {
  \key g \minor
  \time 4/4
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoAntiphonMusic = \relative c'' {
  \markCustom "Antienne"
  \partial 4 d4 d2 r4 df4 c2 r4 c4 bf a g a g fs g2 \fermata \bar "|." \break
  }

altoAntiphonMusic = \relative c' {
  \partial 4 d4 e2 r4 g4 a2 r4 a4 a8[ (g8)] g8[ (f)] f8[ (ef8)] ef4 ef d d2 \fermata
  }

tenorAntiphonMusic =  \relative c' {
  \partial 4 d4 bf2 r4 bf4 d2 \breathe d4 (d) d2 bf4 (c8 bf) a4 d8 (c8) bf2 \fermata
  }

bassAntiphonMusic =  \relative c {
  \partial 4 d4 g2 r4 e4 fs2 \breathe d4 (fs?) g (d) ef c d2 <g g,>2 \fermata
  }

antiphonLyrics = \lyricmode {
  Mon Dieu, mon Dieu, pour -- quoi m'as -- tu a -- ban -- don -- né&nbsp;?
  }

sopranoAntiphonLyrics = \antiphonLyrics
altoAntiphonLyrics = \antiphonLyrics
tenorAntiphonLyrics = \lyricmode {
  E -- loï, E -- loï, la -- ma sa -- bach -- tha -- ni&nbsp;?
}
bassAntiphonLyrics = \tenorAntiphonLyrics

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%          Verses          %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% quand on a fini de rentrer la musique partout, on peut préciser
% (chez les Soprano uniquement!) les paramètres de tempo MIDI
% en utilisant \tAcce et \tRall

sopranoVerseMusic = \relative c'' {
  \silence \sopranoAntiphonMusic
  \markCustom "Psalmodie par verset" \cadenzaOn
  bf\breve g1 a4 \bar "||"
  a\breve a1 bf4 g4 \bar "|." \break

  \markCustom "Psalmodie par strophe"
  bf\breve g1 a4 \bar "||"
  a\breve c1 bf4 \bar "||"
  d\breve bf1 c4 \bar "||"
  c\breve bf1 d4 \bar "|."
  }

altoVerseMusic = \relative c' {
  \silence \sopranoAntiphonMusic
  d\breve d1 c4
  ef\breve fs1 fs4 d4

  g\breve e1 ef4
  fs\breve fs1 d4
  g\breve g1 a4
  fs\breve g1 fs4
  }

tenorVerseMusic = \relative c' {
  \silence \sopranoAntiphonMusic
  bf\breve bf1 g4
  c\breve c1 c4 bf4

  d\breve bf1 c4
  c\breve a1 bf4
  bf\breve d1 ef4
  a,\breve df1 a4
  }

bassVerseMusic = \relative c' {
  \silence \sopranoAntiphonMusic
  g\breve e1 ef4
  fs\breve d1 d4 g4

  g\breve g1 g4
  d\breve d1 g4
  g\breve ef1 g4
  d\breve ef1 d4
  }

verseLyrics = \markup {
  \vspace #5
  \override #'(font-family . sans)
  \override #'(font-size . 2)
  \fill-line {
    \left-column{
      \concat { \typewriter "1. " "Tous ceux qui me v" \underline o "ient me bafouent&nbsp;;" }
      \concat { \typewriter "   " "ils ricanent et h" \underline o "chent la tête&nbsp;:" }
      \concat { \typewriter "   " "«&nbsp;Il comptait sur le Seigne" \underline u "r&nbsp;: qu’il le délivre&nbsp;!" }
      \concat { \typewriter "   " "Qu’il le sauve, puisqu’il " \underline e "st son ami&nbsp;!&nbsp;»" }
      \vspace #1
      \concat { \typewriter "2. " "Oui, des chi" \underline e "ns me cernent," }
      \concat { \typewriter "   " "une bande de vauri" \underline e "ns m’entoure&nbsp;;" }
      \concat { \typewriter "   " "Ils me percent les ma" \underline i "ns et les pieds," }
      \concat { \typewriter "   " "je peux compt" \underline e "r tous mes os." }
    }
    \left-column {
      \concat { \typewriter "3. " "Ils partagent entre "  \underline e "ux mes habits" }
      \concat { \typewriter "   " "et tirent au s" \underline o "rt mon vêtement." }
      \concat { \typewriter "   " "Mais toi, Seigne" \underline u "r, ne sois pas loin&nbsp;:" }
      \concat { \typewriter "   " "ô ma force, viens v" \underline i "te à mon aide&nbsp;!" }
      \vspace #1
      \concat { \typewriter "4. " "Mais tu m’" \underline a "s répondu&nbsp;!" }
      \concat { \typewriter "   " "Et je proclame ton n" \underline o "m devant mes frères," }
      \concat { \typewriter "   " "je te loue en pl" \underline e "ine assemblée." }
      \concat { \typewriter "   " "Vous qui le craignez, lou" \underline e "z le Seigneur." }
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
