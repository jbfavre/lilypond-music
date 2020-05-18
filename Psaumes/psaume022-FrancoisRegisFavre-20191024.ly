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

title = "Psaume 22"
subtitle = \markup { \column { "François-Régis Favre" "17 juin 1937 - &dagger; 20 octobre 2019" } }
composer = "Jean Baptiste Favre"
dedicace = "Clichy la Garenne, 22 octobre 2019"

global = {
  \time 2/4
  \key d \minor
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoAntiphonMusic = \relative c' {
  \markCustom "Antienne"
   d8 e f4 (f8) f8 e g a2 c4 d8 c b4 a8 g a2 \fermata \bar "|." \break
  }

altoAntiphonMusic = \relative c' {
   d8 cs d4 (d8) d c c f2 a4 a8 a g4 e8 e e2 \fermata
  }

tenorAntiphonMusic =  \relative c {
   f8 a a4 (a8)[ bf] g c c2 e4 d8 d d4 d8 b cs2 \fermata
  }

bassAntiphonMusic =  \relative c {
   bf8 a d8 c (bf8) d c e f2 a4 f8 f g4 e8 e a,2 \fermata
  }

antiphonLyrics = \lyricmode {
    Le Sei -- gneur est mon ber -- ger_: rien ne sau -- rait me man -- quer.
  }

sopranoAntiphonLyrics = \antiphonLyrics
altoAntiphonLyrics = \antiphonLyrics
tenorAntiphonLyrics = \antiphonLyrics
bassAntiphonLyrics = \lyricmode {
    Le Sei -- gneur_ -- _ -- est mon ber -- ger_: rien ne sau -- rait me man -- quer.
  }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%          Verses          %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% quand on a fini de rentrer la musique partout, on peut préciser
% (chez les Soprano uniquement!) les paramètres de tempo MIDI
% en utilisant \tAcce et \tRall

sopranoVerseMusic = \relative c' {
  \silence \sopranoAntiphonMusic
  \markCustom "Psalmodie à 4 voix mixtes" \cadenzaOn
  g'\breve a1 f4 \bar "||"
  f\breve e1 g4 a4 \bar "||"
  a\breve c1 d4 \bar "||"
  c\breve b1 a4 g4 a4 \bar "|." \break
  \markCustom "Psalmodie à 2 voix mixtes"
  g\breve a1 f4 \bar "||"
  f\breve e1 g4 a4 \bar "||"
  a\breve c1 d4 \bar "||"
  c\breve b1 a4 g4 a4 \bar "|."
  }

altoVerseMusic = \relative c' {
  \silence \sopranoAntiphonMusic
  d\breve cs1 d4
  d\breve c1 c4 f4
  f\breve a1 f4
  f\breve g1 e4 e4 e4

  s\breve s1 s4
  s\breve s1 s4 s4
  s\breve s1 s4
  s\breve s1 s4 s4 s4
  }

tenorVerseMusic = \relative c' {
  \silence \sopranoAntiphonMusic
  bf\breve a1 a4
  bf\breve g1 c4 c4
  a\breve a1 bf4
  a\breve d1 d4 b4 cs4

  s\breve s1 s4
  s\breve s1 s4 s4
  s\breve s1 s4
  s\breve s1 s4 s4 s4
  }

bassVerseMusic = \relative c {
  \silence \sopranoAntiphonMusic
  g'\breve e1 d4
  bf\breve c1 e4 f4
  d\breve e1 f4
  f\breve g1 e4 e4 a,4

  bf\breve a1 d4
  bf\breve c1 e4 f4
  d\breve a1 bf4
  a\breve d1 d4 b4 cs4
  }

verseLyrics = \markuplist {
  \override #'(font-family . sans)
  \override #'(font-size . 2)
  \column {
    \fill-line {
      \left-column{
        \concat { \typewriter "1. " "Le Seigne" \underline u "r est mon berger," }
        \concat { \typewriter "   " "je ne m" \underline a "nque de rien," }
        \concat { \typewriter "   " "Sur des pr" \underline é "s d’herbe fraîche," }
        \concat { \typewriter "   " "il me f" \underline a "it reposer." }
        \vspace #1
        \concat { \typewriter "2. " "Il me mène vers les e" \underline a "ux tranquilles" }
        \concat { \typewriter "   " "et me f" \underline a "it revivre;" }
        \concat { \typewriter "   " "il me conduit par le j" \underline u "ste chemin" }
        \concat { \typewriter "   " "pour l’honn" \underline e "ur de son nom." }
      }
      \hspace #1
      \left-column{
        \concat { \typewriter "3. " "Si je traverse les rav" \underline i "ns de la mort," }
        \concat { \typewriter "   " "je ne cr" \underline a "ins aucun mal," }
        \concat { \typewriter "   " "car tu " \underline e "s avec moi&nbsp;:" }
        \concat { \typewriter "   " "ton bâton me gu" \underline i "de et me rassure." }
        \vspace #1
        \concat { \typewriter "4. " "Tu prépares la t" \underline a "ble pour moi" }
        \concat { \typewriter "   " "dev" \underline a "nt mes ennemis;" }
        \concat { \typewriter "   " "tu répands le parf" \underline u "m sur ma tête," }
        \concat { \typewriter "   " "ma c" \underline o "upe est débordante." }
      }
    }
    \vspace #1
    \fill-line{
      \left-column {
        \concat { \typewriter "5. " "Grâce et bonh" \underline e "ur m’accompagnent" }
        \concat { \typewriter "   " "tous les j" \underline o "urs de ma vie;" }
        \concat { \typewriter "   " "j’habiterai la mais" \underline o "n du Seigneur" }
        \concat { \typewriter "   " "pour la dur" \underline é "e de mes jours." }
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