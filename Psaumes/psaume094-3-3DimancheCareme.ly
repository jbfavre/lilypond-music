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

title = "Psaume 94-3"
subtitle = "3ème Dimanche de Carême"
composer = "Jean Baptiste Favre"
dedicace = "Clichy la Garenne, janvier 2020"

global = {
  \time 2/4
  \key e \minor
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoAntiphonMusic = \relative c' {
  \markCustom "Antienne"
  \partial 4 e8 fs g4 \tuplet 3/2 { g8 fs g } \tuplet 3/2 { a g a } b4 r8 e,8 g b c4. b8 a4 g8 a b2 \fermata \bar "|." \break
  }

altoAntiphonMusic = \relative c' {
  \partial 4 r4 e4 e fs e r4. g8 a2 fs2 g2
  }

tenorAntiphonMusic =  \relative c' {
  \partial 4 r4 b4 c d e r4. e8 e2 ds2 e2
  }

bassAntiphonMusic =  \relative c {
  \partial 4 r4 e4 c4 d4 \tuplet 3/2 { g8 a fs } g4 r8 e8 a,2 b2 e,2
  }

antiphonLyrics = \lyricmode {
  Au -- jourd' -- hui, ne fer -- mez pas vo -- tre cœur, mais é -- cou -- tez la voix du Sei -- gneur&nbsp;! 
  }

sopranoAntiphonLyrics = \antiphonLyrics
altoAntiphonLyrics = \lyricmode {
  Ne fer -- mez pas %vo -- tre cœur,
  mais é -- cou -- tez
}
tenorAntiphonLyrics = \lyricmode {
  Ne fer -- mez pas %vo -- tre cœur,
  mais é -- cou -- tez
}
bassAntiphonLyrics = \lyricmode {
  Ne fer -- mez pas vo -- tre cœur, mais é -- cou -- tez
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%          Verses          %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoVerseMusic = \relative c'' {
  \silence \sopranoAntiphonMusic
  \markCustom "Psalmodie par verset" \cadenzaOn
  b\breve a4 \bar "|"
  c\breve b1 b4 \bar "||" \break
  \markCustom "Psalmodie par strophe"
  e,\breve b'1 g4 a b \bar "|"
  b\breve a1 a4 \bar "|"
  c\breve a4 \bar "|"
  a\breve g4 a4 b \bar "||"
  }

altoVerseMusic = \relative c'' {
  \silence \sopranoAntiphonMusic
  g\breve e4
  a\breve fs1 g4
  
  }

tenorVerseMusic = \relative c' {
  \silence \sopranoAntiphonMusic
  e\breve c4
  fs\breve ds1 e4r
  }

bassVerseMusic = \relative c {
  \silence \sopranoAntiphonMusic
  e\breve a4
  fs\breve b,1 e4
  }

verseLyrics = \markup {
  \vspace #3
  \override #'(font-family . sans)
  \override #'(font-size . 2)
  \fill-line {
    \column{
      \concat { \typewriter "1. " "Venez, crions de j" \underline o "ie pour le Seigneur," }
      \concat { \typewriter "   " "acclamons notre Roch" \underline e "r, notre salut&nbsp;!" }
      \concat { \typewriter "   " "Allons jusqu’à lu" \underline i " en rendant grâce," }
      \concat { \typewriter "   " "par nos hymnes de f" \underline ê "te acclamons-le&nbsp;!" }
      " "
      \concat { \typewriter "2. " "Entrez, inclinez-vo" \underline u "s, prosternez-vous," }
      \concat { \typewriter "   " "adorons le Seigne" \underline u "r qui nous a faits." }
      \concat { \typewriter "   " "Oui, il " \underline e "st notre Dieu&nbsp;;" }
      \concat { \typewriter "   " "nous sommes le pe" \underline u "ple qu’il conduit." }
      " "
      \concat { \typewriter "3. " "Aujourd’hui écouterez-vo" \underline u "s sa parole&nbsp;?" }
      \concat { \typewriter "   " "«&nbsp;Ne fermez pas votre cœ" \underline u "r comme au désert," }
      \concat { \typewriter "   " "où vos pères m’ont tent" \underline é " et provoqué," }
      \concat { \typewriter "   " "et pourtant ils avaient v" \underline u " mon exploit.&nbsp;»" }
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