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

title = "Psaume 96"
subtitle = "Nativité du Seigneur - Messe de l'Aurore"
composer = "Jean Baptiste Favre"
dedicace = "Saint Pierre Quiberon, 25 décembre 2018"

global = {
  \key d \major
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoAntiphonMusic = \relative c' {
  \markCustom "Antienne"
  d8 e fs4 g b a4. a8 b cs d b cs2 \breathe a8 a b4 b d d2 \fermata \bar "|." \break
  }

altoAntiphonMusic = \relative c' {
  a8 cs d4 b d cs4. fs8 d d g d e2 \breathe fs8 fs e4 e a fs2 \fermata
  }

tenorAntiphonMusic =  \relative c {
  fs8 a fs4 g g a4. a8 b b b e cs2 \breathe d8 d d4 d cs a2 \fermata
  }

bassAntiphonMusic =  \relative c {
  d8 a b4 d e fs4. d8 g fs e g a2 \breathe fs8 a g4 g8 (fs) e (a,) d2 \fermata
  }

antiphonLyrics = \lyricmode {
  La lu -- mière au -- jourd' -- hui a res -- plen -- di sur nous&nbsp;: un Sau -- veur nous est né !
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

sopranoVerseMusic = \relative c' {
  \silence \sopranoAntiphonMusic
  \markCustom "Psalmodie par strophe" \cadenzaOn
  fs\breve fs1 fs1 g4 e fs \bar "||"
  b\breve b1 a4 g fs \bar "||" \break
  d'\breve cs1 b4 \bar "||"
  b\breve g1 a4 \bar "|."
  }

altoVerseMusic = \relative c' {
  \silence \sopranoAntiphonMusic
  d\breve d1 d d4 e d
  d\breve e1 e4 cs d
  fs\breve a1 d,4
  g\breve d1 e4
  }

tenorVerseMusic = \relative c' {
  \silence \sopranoAntiphonMusic
  a\breve a1 b a4 cs a
  b\breve cs1 a4 a a
  d\breve cs1 b4
  d\breve b1 cs4
  }

bassVerseMusic = \relative c {
  \silence \sopranoAntiphonMusic
  d\breve b1 g a4 a d
  g,\breve a1 a4 a d
  b\breve fs'1 g4
  e\breve e1 a4
  }

verseLyrics = \markup {
  \vspace #5
  \override #'(font-family . sans)
  \override #'(font-size . 2)
  \fill-line {
    \left-column{
      \concat { \typewriter "1. " "Le Seigneur est roi&nbsp;! Ex" \underline u "lte la terre&nbsp;!" }
      \concat { \typewriter "   " "Joie pour les " \underline î "les sans nombre&nbsp;!" }
      \concat { \typewriter "   " "Les cieux ont proclam" \underline é " sa justice," }
      \concat { \typewriter "   " "et tous les pe" \underline u "ples ont vu sa gloire." }
      \vspace #1
      \concat { \typewriter "2. " "Une lumière est sem" \underline é "e pour le juste," }
      \concat { \typewriter "   " "et pour le cœur s" \underline i "mple, une joie." }
      \concat { \typewriter "   " "Que le Seigneur soit votre j" \underline o "ie, hommes justes&nbsp;;" }
      \concat { \typewriter "   " "rendez grâce en rappelant son n" \underline o "m très saint." }
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