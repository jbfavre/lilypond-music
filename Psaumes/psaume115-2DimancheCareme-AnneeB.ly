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

title = "Psaume 115-3"
subtitle = "Deuxième dimanche de Carême - Année B"
composer = "Jean Baptiste Favre"
dedicace = "Clichy la Garenne, 20 février 2018"

global = {
  \key g \major
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoAntiphonMusic = \relative c' {
  \markCustom "Antienne"
  \partial 8 d8[ e fs] g4 fs8[ g] a[ a g a] b4 a8[ b] c[ c b g] a2 \bar "|." \break
  }

altoAntiphonMusic = \relative c' {
  \partial 8 a8[ c c] d4 fs8[ d] c[ d c e] ds4 b8[ d!] e[ c d e] fs2
  }

tenorAntiphonMusic =  \relative c {
  \partial 8 fs8[ g a] g4 a8[ g] e[ fs g a] fs4 g8[ fs] g[ a g g] a2
  }

bassAntiphonMusic =  \relative c {
  \partial 8 d8 c a b4 d8[ b] a[ c e c] b[ ds] e[ d!] c[ e d b] d2
  }

antiphonLyrics = \lyricmode {
  Je mar -- che -- rai en pré -- sen -- ce du Sei -- gneur sur la ter -- re des vi -- vants
  }

sopranoAntiphonLyrics = \antiphonLyrics
altoAntiphonLyrics = \antiphonLyrics
tenorAntiphonLyrics = \antiphonLyrics
bassAntiphonLyrics = ""

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%          Verses          %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoVerseMusic = \relative c'' {
  \silence \sopranoAntiphonMusic
  \markCustom "Psalmodie par strophe" \cadenzaOn
   b\breve a1 g4 \bar "||"
   c\breve b4 g a \bar "||"
   a\breve b1 a4 g \bar "||"
   g\breve a1 a4 g \bar "|."
  }
altoVerseMusic = \relative c' {
  \silence \sopranoAntiphonMusic
   d\breve d1 e4
   e\breve g4 e fs
   fs\breve g1 e4 e
   e\breve e1 fs4 d
  }

tenorVerseMusic = \relative c' {
  \silence \sopranoAntiphonMusic
   b\breve a1 b4
   c\breve b4 c a
   b\breve b1 c4 b
   c\breve c1 c4 b
  }

bassVerseMusic = \relative c' {
  \silence \sopranoAntiphonMusic
   g\breve fs1 e4
   a\breve e4 c d
   ds\breve e1 g4 e
   c\breve a1 d4 g,
   }

verseLyrics = \markuplist {
  \vspace #5
  \override #'(font-family . sans)
  \override #'(font-size . 2)
  \column {
    \fill-line {
      \left-column{
        \concat { \typewriter "1. " "Je crois, et je p" \underline a "rlerai,"}
        \concat { \typewriter "   " "moi qui ai beauco" \underline u "p souffert."}
        \concat { \typewriter "   " "Il en co" \underline û "te au Seigneur"}
        \concat { \typewriter "   " "de voir mour" \underline i "r les siens&nbsp;!"}
      }
      \hspace #1
      \left-column{
        \concat { \typewriter "2. " "Ne suis-je pas, Seigne" \underline u "r, ton serviteur,"}
        \concat { \typewriter "   " "moi, dont tu bris" \underline a "s les chaînes&nbsp;?"}
        \concat { \typewriter "   " "Je t’offrirai le sacrif" \underline i "ce d’action de grâce,"}
        \concat { \typewriter "   " "j’invoquerai le n" \underline o "m du Seigneur."}
      }
    }
    \vspace #1
    \fill-line {
      \left-column{
        \concat { \typewriter "3. " "Je tiendrai mes prom" \underline e "sses au Seigneur,"}
        \concat { \typewriter "   " "oui, devant to" \underline u "t son peuple,"}
        \concat { \typewriter "   " "à l’entrée de la mais" \underline o "n du Seigneur,"}
        \concat { \typewriter "   " "au milie" \underline u " de Jérusalem&nbsp;!"}
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