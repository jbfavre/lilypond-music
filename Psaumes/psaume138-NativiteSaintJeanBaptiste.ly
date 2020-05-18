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

title = "Psaume 138"
subtitle = "Solennité de la nativité de saint Jean Baptiste"
composer = "Jean Baptiste Favre"
dedicace = "Clichy la Garenne, juin 2018"

global = {
  \time 4/4
  \key f \major
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoAntiphonMusic = \relative c' {
  \markCustom "Antienne"
  r8 c8 f a g4 g4 r8 a4 g4 f4.
  r8 g8 a a c4 c8 bf a g4 f8 g4. (a8) a2 \bar "|." \break
  }

altoAntiphonMusic = \relative c' {
  c4 c8 c bf4 bf r4 e4 e a,4
  r8 d d c bf4 d8 f d4 d e e f2
  }

tenorAntiphonMusic =  \relative c' {
  a4 a4 r8 bf8 e d cs4 cs4 d4. e8
  f8 f8 fs fs g4 g8 f f4 f8 d c4 (bf) c2
  }

bassAntiphonMusic =  \relative c {
  f4 f8 f e4 e a, a d2
  bf4 a g g8 a bf4 b c e f2
  }

antiphonLyrics = \lyricmode {
  Je te rends grâ -- ce, ô mon Dieu,
  Je te rends grâ -- ces, pour tant de mer -- veil -- les.
  }

sopranoAntiphonLyrics = \antiphonLyrics
altoAntiphonLyrics = \antiphonLyrics
tenorAntiphonLyrics =  \lyricmode {
  Grâ -- ce&nbsp;! Je te rends grâ -- ce, ô mon Dieu,
  Je te rends grâ -- ce pour tant de mer -- veil -- les.
  }
bassAntiphonLyrics =   \lyricmode {
  Je te rends grâ -- ce, ô mon Dieu,
  Grâ -- ce&nbsp;! Je te rends grâ -- ce, ô mon Dieu,
  }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%          Verses          %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoVerseMusic = \relative c' {
  \silence \sopranoAntiphonMusic
  \markCustom "Psalmodie par strophe" \cadenzaOn
  f\breve f1 g4 \bar "||"
  g\breve a1 g4 g f \bar "||"
  g\breve a1 bf4 \bar "||"
  a\breve g1 g4 \bar "||"
  }
altoVerseMusic = \relative c' {
  \silence \sopranoAntiphonMusic
  c\breve c1 d4
  e\breve e1 e4 d d
  d\breve fs1 g4
  f\breve f1 e4
  }

tenorVerseMusic = \relative c' {
  \silence \sopranoAntiphonMusic
  a\breve a1 bf4
  a\breve cs1 a4 a a
  bf\breve d1 d4
  d\breve d1 c4
  }

bassVerseMusic = \relative c {
  \silence \sopranoAntiphonMusic
  f\breve f1 e4
  cs\breve a1 cs!4 d d
  bf\breve a1 g4
  bf\breve b1 c4
  }

verseLyrics = \markuplist {
  \override #'(font-family . sans)
  \override #'(font-size . 2)
  \column {
    \fill-line {
      \left-column{
        \concat { \typewriter "1. " "Tu me scrutes, Seigne" \underline u "r, et tu sais !"}
        \concat { \typewriter "   " "Tu sais quand je m’ass" \underline o "is, quand je me lève ;"}
        \concat { \typewriter "   " "de très loin, tu pén" \underline è "tres mes pensées,"}
        \concat { \typewriter "   " "tous mes chemins te s" \underline o "nt familiers."}
      }
      \hspace #1
      \left-column {
        \concat { \typewriter "2. " "C’est toi qui as cré" \underline é " mes reins,"}
        \concat { \typewriter "   " "qui m’as tissé dans le s" \underline e "in de ma mère."}
        \concat { \typewriter "   " "Je reconnais devant t" \underline o "i le prodige,"}
        \concat { \typewriter "   " "l’être étonn" \underline a "nt que je suis."}
      }
    }
    \vspace #1
    \fill-line {
      \left-column {
        \concat { \typewriter "3. " "Étonn" \underline a "ntes sont tes œuvres,"}
        \concat { \typewriter "   " "toute mon " \underline â "me le sait."}
        \concat { \typewriter "   " "Mes os n’étaient pas cach" \underline é "s pour toi"}
        \concat { \typewriter "   " "quand j’étais façonn" \underline é " dans le secret."}
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

staffCustomSize = 17.9

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