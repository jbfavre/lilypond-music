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
  \partial 4 e8 fs g4 \tuplet 3/2 { g8 fs g } \tuplet 3/2 { a g a } b4 r8 e,8 g b c4. b8 a4 g8 fs g2 \fermata \bar "|." \break
  }

altoAntiphonMusic = \relative c' {
  \partial 4 e8 ds e4 \tuplet 3/2 { e8 e e } \tuplet 3/2 { fs8 fs fs } fs4 \breathe b,4 e8 g fs4. fs8 fs4 ds8 ds e2
  }

tenorAntiphonMusic =  \relative c' {
  \partial 4 g8 b b4 \tuplet 3/2 { c8 c c } \tuplet 3/2 { e8 e e } ds4 \breathe g,4 b8 e e4. e8 ds4 b8 b b2
  }

bassAntiphonMusic =  \relative c {
  \partial 4 e8 b e4 \tuplet 3/2 { c8 c c } \tuplet 3/2 { c8 c c } b4 \breathe e4 e8 e a,4. a8 b4 b8 b e,2
  }

antiphonLyrics = \lyricmode {
  Au -- jourd' -- hui, ne fer -- mez pas vo -- tre cœur, mais é -- cou -- tez la voix du Sei -- gneur&nbsp;!
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
  b\breve b1 b4 g a \bar "|"
  c\breve c1 c4 a g \bar "||" \break
  %\markCustom "Psalmodie par strophe"
  %e,\breve b'1 g4 a b \bar "|"
  %b\breve a1 a4 \bar "|"
  %c\breve a4 \bar "|"
  %a\breve g4 a4 b \bar "||"
  }

altoVerseMusic = \relative c'' {
  \silence \sopranoAntiphonMusic
  g\breve fs1 e4 e e
  fs\breve fs1 fs4 fs e
  }

tenorVerseMusic = \relative c' {
  \silence \sopranoAntiphonMusic
  e\breve b1 c4 c c
  e\breve ds1 ds4 ds e
  }

bassVerseMusic = \relative c {
  \silence \sopranoAntiphonMusic
  e\breve d1 c4 c c
  a\breve b1 b4 b e
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