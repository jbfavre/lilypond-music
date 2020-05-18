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

title = "Psaume 23-3"
subtitle = "Présentation du Seigneur au Temple"
composer = "Jean Baptiste Favre"
dedicace = "Clichy la Garenne, février 2020"

global = {
  \key f \major
  \time 3/8
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoAntiphonMusic = \relative c' {
  \markCustom "Antienne"
  c8 f g a4 bf8 g a bf c4. r4 f,8 d'4. d8 c bf c4. (c4.) \fermata \bar "|." \break
  }

altoAntiphonMusic = \relative c' {
  c8 d e f4 f8 e f f a4. r8 f8 f f4. d8 f f e4. f4. \fermata
  }

tenorAntiphonMusic =  \relative c' {
  a8 a c c4 d8 c c d e4 \breathe f,8 a8 r8 a bf4. g8 c bf g4. a4. \fermata
  }

bassAntiphonMusic =  \relative f {
  f8 d c f4 bf,8 c f bf, a4. r8 d8 d bf4. g8 a d c4. f,4. \fermata
  }

antiphonLyrics = \lyricmode {
  C'est le Sei -- gneur, Dieu de l'u -- ni -- vers; c'est lui, le roi de gloire.
  }
sopranoAntiphonLyrics = \antiphonLyrics
altoAntiphonLyrics = \lyricmode {
  C'est le Sei -- gneur, Dieu de l'u -- ni -- vers; oui c'est lui, le roi de gloire.
  }
tenorAntiphonLyrics = \lyricmode {
  C'est le Sei -- gneur, Dieu de l'u -- ni -- vers; c'est lui, c'est lui, le roi de gloire.
  }
bassAntiphonLyrics = \lyricmode {
  C'est le Sei -- gneur, Dieu de l'u -- ni -- vers; oui c'est lui, le roi de gloire.
  }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%          Verses          %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoVerseMusic = \relative c'' {
  \silence \sopranoAntiphonMusic
  \markCustom "Psalmodie par strophe" \cadenzaOn
  a\breve c1 g4 \bar "||"
  f\breve bf1 a4 \bar "||"
  d\breve d1 c4 \bar "||"
  }

altoVerseMusic = \relative c' {
  \silence \sopranoAntiphonMusic
  f\breve f1 e4
  d\breve f1 e4
  f\breve g1 e4
  }

tenorVerseMusic = \relative c' {
  \silence \sopranoAntiphonMusic
  c\breve a1 c4
  a\breve bf1 c4
  bf\breve bf1 g4
  }

bassVerseMusic = \relative f {
  \silence \sopranoAntiphonMusic
  f\breve f1 c4
  d\breve d1 a4
  bf\breve g1 c4
  }

verseLyrics = \markup {
  \vspace #5
  \override #'(font-family . sans)
  \override #'(font-size . 2)
  \fill-line {
    \left-column{
      \concat { \typewriter "1. " "Portes, levez vos frontons," }
      \concat { \typewriter "   " "élevez-vous, portes éternelles&nbsp;:" }
      \concat { \typewriter "   " "qu’il entre, le roi de gloire&nbsp;!" }
      \vspace #1
      \concat { \typewriter "2. " "Qui est ce roi de gloire&nbsp;?" }
      \concat { \typewriter "   " "C’est le Seigneur, le fort, le vaillant," }
      \concat { \typewriter "   " "le Seigneur, le vaillant des combats." }
      \vspace #1
      \concat { \typewriter "3. " "Portes, levez vos frontons," }
      \concat { \typewriter "   " "levez-les, portes éternelles&nbsp;:" }
      \concat { \typewriter "   " "qu’il entre, le roi de gloire&nbsp;!" }
      \vspace #1
      \concat { \typewriter "4. " "Qui donc est ce roi de gloire&nbsp;?" }
      \concat { \typewriter "   " "C’est le Seigneur, Dieu de l’univers&nbsp;;" }
      \concat { \typewriter "   " "c’est lui, le roi de gloire." }
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
\verseLyrics