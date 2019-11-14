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

title = "Psaume 95 à 4 voix mixtes"
subtitle = "Nativité du Seigneur - Messe de la nuit"
composer = "Jean Baptiste Favre"
dedicace = "Saint Pierre Quiberon, 24 décembre 2018"

global = {
  \key g \major
  \time 6/8
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoAntiphonMusic = \relative c'' {
  \markCustom "Antienne"
  a4 a8 a4. (a8) g a b a g a2. \breathe c4 c8 b4. (b8) a g a4. \fermata \bar "|." \break
  }

altoAntiphonMusic = \relative c' {
  r4. e4 e8 e d e fs e d e2. \breathe r4. r8 g8 g g e e e4.
  }

tenorAntiphonMusic =  \relative c' {
  c4. c4. c8 b c d c b c2. \breathe e4 e8 d4. (d8) a b cs4.
  }

bassAntiphonMusic =  \relative c {
  r4. a4. a a a8 (b) c a4. \breathe r4. e'4. g4 e8 a,4.
  }

antiphonLyrics = \lyricmode {
  Au -- jourd' -- hui un Sei -- gneur nous est né, C'est le Christ, le Sei -- gneur !
  }

sopranoAntiphonLyrics = \antiphonLyrics
altoAntiphonLyrics = \antiphonLyrics
tenorAntiphonLyrics = \antiphonLyrics
bassAntiphonLyrics =  \lyricmode {
  Un Sei -- gneur nous est né, Christ et Sei -- gneur !
  }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%          Verses          %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoVerseMusic = \relative c'' {
  \silence \sopranoAntiphonMusic
  \markCustom "Psalmodie par strophe" \cadenzaOn
  \set Score.markFormatter = #format-mark-box-alphabet
  a\breve a1 g4 \bar "||"
  \mark #2 a\breve c1 a4 b \bar "||"
  \mark \default b\breve g1 b4 a \bar "||"
  }

altoVerseMusic = \relative c' {
  \silence \sopranoAntiphonMusic
  e\breve e1 e4 \bar "||"
  e\breve e1 e4 fs \bar "||"
  g\breve d1 g4 e4 \bar "||"
  }

tenorVerseMusic = \relative c' {
  \silence \sopranoAntiphonMusic
  c\breve c1 b4 \bar "||"
  c\breve a1 a4 b \bar "||"
  d\breve b1 d4 cs \bar "||"
  }

bassVerseMusic = \relative c {
  \silence \sopranoAntiphonMusic
  a\breve a1 e'4 \bar "||"
  a,\breve c1 c4 d4 \bar "||"
  g,\breve g1 g4 a \bar "||"
  }

verseLyrics = \markup {
  \vspace #1.9
  \override #'(font-family . sans)
  \override #'(font-size . 2)
  \column {
    \fill-line {
      \left-column{
        \concat { \typewriter "1. " "Chantez au Seigne" \underline u "r un chant nouveau," }
        \concat { \typewriter "   " "chantez au Seigne" \underline u "r, terre entière," }
        \concat { \typewriter "   " "chantez au Seigneur et béniss" \underline e "z son nom !" }
        \vspace #1
        \concat { \typewriter "2. " "De jour en jour, proclam" \underline e "z son salut," }
        \concat { \typewriter "   " "racontez à tous les pe" \underline u "ples sa gloire," }
        \concat { \typewriter "   " "à toutes les nati" \underline o "ns ses merveilles !" }
      }
      \left-column{
        \concat { \typewriter "3. " "Joie au ciel ! Ex" \underline u "lte la terre !" }
        \concat { \typewriter "   " "Les masses de la m" \underline e "r mugissent," }
        \concat { \typewriter "   " "la campagne toute enti" \underline è "re est en fête." }
        \vspace #1
        \concat { \typewriter "4. " "Les arbres des forêts d" \underline a "nsent de joie" }
        \concat { \typewriter "   " "devant la face du Seigne" \underline u "r, car il vient," }
        \concat { \typewriter "   " "car il vi" \underline e "nt pour juger la terre." }
      }
    }
    \vspace #1
    \fill-line {
      \left-column{
        \concat { \typewriter "5. " "Il jugera le m" \underline o "nde avec justice" \typewriter "  (B)" }
        \concat { \typewriter "   " "et les pe" \underline u "ples selon sa vérité !" \typewriter "  (C)" }
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



title = "Psaume 95 à 3 voix mixtes"
altoVoiceTitle = "Alto ou Ténor"
staffCustomSize = 14

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoAntiphonMusic = \relative c'' {
  r2. r2. a4 a8 a4. (a8) g a b a g a2.~ a2 \breathe c8 c b4 a b cs2. \fermata \bar "|." \break
  }

altoAntiphonMusic = \relative c' {
  r2. e4 e8 e4. e4 e8 e4. (e8) d e fs e d e fs d e4.~ \time 3/4 e2 \breathe r4 g4 e4 d4 e2.
  }

bassAntiphonMusic =  \relative c' {
  a,4 a8 a4. a4 a8 a4. a4 a8 a4. a'4 a8 a4. (a8) b g e d b \time 3/4 a2 \breathe r4 e'4 c4 g'4 a2.
  }

antiphonLyrics = \lyricmode {
  Au -- jourd' -- hui un Sei -- gneur nous est né, C'est le Christ, le Sei -- gneur&nbsp;!
  }

sopranoAntiphonLyrics = \antiphonLyrics
altoAntiphonLyrics = \lyricmode {
  Un Sei -- gneur, nous est né, Au -- jourd' -- hui un Sei -- gneur nous est né, Christ et Sei -- gneur !
  }
bassAntiphonLyrics =  \lyricmode {
  Au -- jourd' -- hui, un Sei -- gneur, nous est né. Au -- jourd' -- hui, un Sei -- gneur nous est né, Christ et Sei -- gneur !
  }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%          Verses          %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoVerseMusic = \relative c'' {
  \silence \sopranoAntiphonMusic
  \markCustom "Psalmodie par strophe" \cadenzaOn
  \set Score.markFormatter = #format-mark-box-alphabet
  a\breve g4 \bar "||"
  \mark #2 a\breve c1 a4 b \bar "||"
  \mark \default b\breve g1 b4 cs \bar "||"
  }

altoVerseMusic = \relative c' {
  \silence \sopranoAntiphonMusic
  e\breve d4
  e\breve g1 e4 fs
  fs\breve d1 d4 e
  }

bassVerseMusic = \relative c {
  \silence \sopranoAntiphonMusic
  a\breve b4
  a\breve c1 c4 d4
  d\breve b1 g4 a
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
    \include "../libs/layouts/commonAntiphonThreeVoices.ily"
    \include "../libs/layouts/commonPiano.ily"
    % Psalmodie à 4 voix mixtes
    \include "../libs/layouts/commonVerseThreeVoices.ily"
    %\new FiguredBass { \figuredBass \verseFiguredBass }
    %\new FiguredBass { \harmony \verseHarmony }
  >>
}

% Load PDF output
\include "../libs/layouts/outputPDF.ily"