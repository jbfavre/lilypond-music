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

title = "Psaume 137"
subtitle = "21e dimanche du Temps Ordinaire - Année A"
composer = "Jean Baptiste Favre"
dedicace="Clichy la garenne, 27 septembre 2017"

global = {
    \time 2/4
    \key d \minor
  }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoAntiphonMusic = \relative c' {
  \markCustom "Antienne"
  a'4 a2 \breathe a8 g c b a g a2 \breathe \tuplet 3/2 { a8 g a } f4 d8 d g bf a2 \fermata \bar "|." \break
}

altoAntiphonMusic = \relative c' {
  e4 f2 \breathe e8 e8 g8 f8 d8 e8 e2 \breathe e4 d4 bf8 bf c e c2 \fermata
}

tenorAntiphonMusic =  \relative c' {
  cs4 d2 \breathe d8 d e d b b cs2 \breathe cs4 bf4 g8 g  bf g a2 \fermata
}

bassAntiphonMusic =  \relative c {
  a4 d2 b8 b c d e e a,2 \breathe a4 bf4 g'8 f e c f,2 \fermata
}

antiphonLyrics = \lyricmode {
  Sei -- gneur, é -- ter -- nel est ton a -- mour:
  n’ar -- rê -- te pas l’œu -- vre de tes mains.
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
  a\breve f1 g4 b a4 \bar "||"
  f\breve d1 f4 g a4 \bar "|." \break

  \markCustom "Psalmodie par strophe"
  a\breve f1 g4 b a4 \bar "||"
  a\breve c1 b4 g a4 \bar "||"
  a\breve a1 a4 g4 f g4 \bar "||"
  f\breve d1 f4 g a4 \bar "|."
  }

altoVerseMusic = \relative c' {
  \silence \sopranoAntiphonMusic
  e\breve d1 e4 g e4
  d\breve bf1 d4 e e4

  c\breve d1 e4 d4 e4
  f\breve e1 g4 e4 f4
  e\breve f1 f4 e4 f4 e4
  d\breve bf1 d4 d4 e4
  }

tenorVerseMusic = \relative c' {
  \silence \sopranoAntiphonMusic
  cs\breve a1 c4 d cs4
  bf\breve g1 a4 c4 cs4

  a\breve a1 g4 b4 cs4
  a\breve c1 d4 d4 c4
  cs\breve d1 c4 c4 d4 d8[ \parenthesizeAll c8]
  bf\breve g1 a4 bf4 cs4
  }

bassVerseMusic = \relative c {
  \silence \sopranoAntiphonMusic
  a\breve d1 c4 g a4
  bf\breve g1 d'4 c4 a4

  f\breve d'1 c4 g4 a4
  d\breve a1 b4 b4 f4
  a\breve d1 f4 c d c4
  bf\breve g1 d'4 e4 a,4
  }

verseLyrics = \markup {
  \vspace #1
  \override #'(font-family . sans)
  \override #'(font-size . 2)
  \column {
    \fill-line {
      \left-column{
        \concat { \typewriter "1. " "De tout mon cœur, Seign" \underline e "ur, je te"}
        \concat { \typewriter "   " "  rends grâce:"}
        \concat { \typewriter "   " "tu as entendu les par" \underline o "les de ma bouche."}
        \concat { \typewriter "   " "Je te ch" \underline a "nte en présence des anges,"}
        \concat { \typewriter "   " "vers ton temple sacr" \underline é ", je me prosterne."}
      }
      \hspace #1
      \left-column {
        \concat { \typewriter "2. " "Je rends grâce à ton nom pour ton am" \underline o "ur et"}
        \concat { \typewriter "   " "  ta vérité,"}
        \concat { \typewriter "   " "car tu élèves, au-dessus de t" \underline o "ut, ton nom et"}
        \concat { \typewriter "   " "  ta parole."}
        \concat { \typewriter "   " "Le j" \underline o "ur où tu répondis à mon appel,"}
        \concat { \typewriter "   " "tu fis grandir en mon " \underline â "me la force."}
      }
    }
    \vspace #1
    \fill-line {
      \left-column {
        \concat { \typewriter "3. " "Si haut que soit le Seign" \underline e "ur, il voit le plus humble."}
        \concat { \typewriter "   " "de l" \underline o "in, il reconnaît l’orgueilleux."}
        \concat { \typewriter "   " "Seigneur, " \underline é "ternel est ton amour:"}
        \concat { \typewriter "   " "n’arrête p" \underline a "s l’œuvre de tes mains."}
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

systemToSystemSpacing = 
  #'((basic-distance . 10)
     (minimum-distance . 10)
     (padding . 4)
     (stretchability . 10))

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