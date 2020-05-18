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

title = "Psaume 68"
subtitle = "12e dimanche du Temps Ordinaire - Année A"
composer = "Jean Baptiste Favre"
dedicace = "Clichy la Garenne, avril 2018"

global = {
  \key d \minor
  \time 2/4
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoAntiphonMusic = \relative c' {
  \markCustom "Antienne"
  d8 e f g a2 \breathe c4 b8 g a2 (a2) \fermata \bar "|." \break
  }

altoAntiphonMusic = \relative c' {
  d8 c c d cs2 \breathe f4 g8 e e2 (e2) \fermata
  }

tenorAntiphonMusic =  \relative c' {
  a8 a a e e2 \breathe a4 b8 (d) d4 (cs8 b) cs2 \fermata
  }

bassAntiphonMusic =  \relative c {
  f8 e d bf a2 \breathe f4 d'8 b a2 (a2) \fermata
  }

antiphonLyrics = \lyricmode {
  Dans ton grand a -- mour, Dieu, ré -- ponds -- moi. 
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
  g\breve a1 g4 f \bar "||"
  f\breve f1 g4 g a \bar "||"
  d\breve c1 b4 \bar "||" \break
  b\breve c1 a4 \bar "||"
  a\breve a1 s4 g4 \bar "||"
  g\breve g1 g4 a d, \bar "|."
  }

altoVerseMusic = \relative c' {
  \silence \sopranoAntiphonMusic
  d\breve e1 e4 d
  d\breve d1 e4 e e
  a,\breve c1 d4
  g\breve a1 e4
  f\breve f1 s4 d4
  e\breve e1 e4 cs a
  }

tenorVerseMusic = \relative c' {
  \silence \sopranoAntiphonMusic
  bf\breve g1 cs4 a
  bf\breve bf1 <bf c>4 <bf d> <a cs>
  f\breve a1 bf4
  d\breve c1 c4
  d\breve d1 s4 bf4
  bf\breve a1 cs4 g f
  }

bassVerseMusic = \relative c {
  \silence \sopranoAntiphonMusic
  d\breve cs1 a4 d
  bf\breve g1 bf4 c a
  d\breve e1 g4
  e\breve f1 c4
  a\breve bf1 s4 g4
  c\breve cs1 a4 e' d
  }

verseLyrics = \markup {
  \override #'(font-family . sans)
  \override #'(font-size . 2)
  \column{
    \fill-line {
      \left-column{
        \concat { \typewriter "1. " "C’est pour toi que j’end" \underline u "re l’insulte," }
        \concat { \typewriter "   " "que la honte me co" \underline u "vre le visage&nbsp;:" }
        \concat { \typewriter "   " "je suis un étrang" \underline e "r pour mes frères," }
        \concat { \typewriter "   " "un inconnu pour les f" \underline i "ls de ma mère." }
        \concat { \typewriter "   " "L’amour de ta mais" \underline o "n m’a perdu&nbsp;;" }
        \concat { \typewriter "   " "on t’insulte, et l’insulte ret" \underline o "mbe sur moi." }
      }
      \hspace #1
      \left-column {
        \concat { \typewriter "2. " "Et moi, je te pr" \underline i "e, Seigneur&nbsp;:" }
        \concat { \typewriter "   " "c’est l’he" \underline u "re de ta grâce&nbsp;;" }
        \concat { \typewriter "   " "dans ton grand amour, Di" \underline e "u, réponds-moi," }
        \concat { \typewriter "   " "par ta vérité s" \underline a "uve-moi." }
        \concat { \typewriter "   " "Réponds-moi, Seign" \underline e "ur, car il est bon," }
        \concat { \typewriter "   " "    ton amour&nbsp;;" }
        \concat { \typewriter "   " "dans ta grande tendr" \underline e "sse, regarde-moi."}
      }
    }
    \vspace #0.5
    \fill-line{
      \left-column {
        \concat { \typewriter "3. " "Les pauvres l’ont v" \underline u ", ils sont en fête&nbsp;:" }
        \concat { \typewriter "   " "«&nbsp;Vie et joie, à v" \underline o "us qui cherchez Dieu&nbsp;!&nbsp;»" }
        \concat { \typewriter "   " "Car le Seigneur éc" \underline o "ute les humbles," }
        \concat { \typewriter "   " "il n’oublie pas les s" \underline i "ens emprisonnés." }
        \concat { \typewriter "   " "Que le ciel et la t" \underline e "rre le célèbrent," }
        \concat { \typewriter "   " "les mers et t" \underline o "ut leur peuplement&nbsp;!" }
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