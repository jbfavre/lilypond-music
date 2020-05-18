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

title = "Psaume 42"
subtitle = ""
composer = "Jean Baptiste Favre"
dedicace = "Clichy la Garenne, 2 avril 2018"

global = {
  \key e \major
  \time 3/4
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoAntiphonMusic = \relative c' {
  \markCustom "Antienne"
  e8[ fs] gs4 a fs2 \breathe gs8[ bs] cs4 b8[ a] gs2 \fermata \bar "|." \break
  }

altoAntiphonMusic = \relative c' {
  r4 e4 fs4 ds2 e8[ (ds)] e4 ds8[ (fs)] (e2) \fermata
  }

tenorAntiphonMusic =  \relative c' {
  r4 cs4 cs4 b2 cs8[ (ds)] cs4 b2. \fermata
  }

bassAntiphonMusic =  \relative c {
  e8[ ds] cs[ (b)] a[ (fs)] b2 \breathe cs8[ gs] a4 b8[ ds8] e2 \fermata
  }

antiphonLyrics = \lyricmode {
  Il est mon Sau -- veur,
  mon sau -- veur et mon Dieu!
  }
antiphonShortLyrics = \lyricmode {
  Mon sau -- veur et mon Dieu!
  }

sopranoAntiphonLyrics = \antiphonLyrics
altoAntiphonLyrics = \antiphonShortLyrics
tenorAntiphonLyrics = \antiphonShortLyrics
bassAntiphonLyrics = \antiphonLyrics

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%          Verses          %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoVerseMusic = \relative c'' {
  \silence \sopranoAntiphonMusic
  \markCustom "Psalmodie par verset" \cadenzaOn
  gs\breve gs1 fs4 e \bar "||"
  a\breve gs1 e4 fs fs e \bar "||"
  }

altoVerseMusic = \relative c' {
  \silence \sopranoAntiphonMusic
  e\breve ds1 ds4 cs
  fs\breve e1 cs4 cs b b
  }

tenorVerseMusic = \relative c' {
  \silence \sopranoAntiphonMusic
  b\breve gs1 fs4 gs
  cs\breve b1  gs4 fs fs gs
  }

bassVerseMusic = \relative c {
  \silence \sopranoAntiphonMusic
  e\breve b1 bs4 cs
  a\breve b1 cs4 as b e
  }

verseLyrics = \markup {
  \vspace #5
  \override #'(font-family . sans)
  \override #'(font-size . 2)
  \column {
    \fill-line {
      \left-column{
        \concat { \typewriter "1. " "Rends-moi justice, ô mon Dieu, défends" }
        \concat { \typewriter "   " "  ma cause contre un pe" \underline u "ple sans foi&nbsp;;" }
        \concat { \typewriter "   " "de l'homme qui r" \underline u "se et trahit, libère-moi." }
        \vspace #1
        \concat { \typewriter "2. " "C'est toi, Dieu, ma forteresse&nbsp;: pourqu" \underline o "i" }
        \concat { \typewriter "   " "  me rejeter&nbsp;?" }
        \concat { \typewriter "   " "Pourquoi vais-je assombri, press" \underline é " par" }
        \concat { \typewriter "   " "  l'ennemi&nbsp;?" }
      }
      \hspace #1
      \left-column {
        \concat { \typewriter "3. " "Envoie ta lumière et ta vérité&nbsp;:" }
        \concat { \typewriter "   " "  qu'elles gu" \underline i "dent mes pas" }
        \concat { \typewriter "   " "et me conduisent à ta montagne sainte," }
        \concat { \typewriter "   " "  j" \underline u "squ'en ta demeure." }
        \vspace #1
        \concat { \typewriter "4. " "J'avancerai jusqu'à l'autel de Dieu, vers Dieu" }
        \concat { \typewriter "   " "  qui est to" \underline u "te ma joie&nbsp;;" }
        \concat { \typewriter "   " "je te rendrai grâce avec ma harpe," }
        \concat { \typewriter "   " "  Die" \underline u ", mon Dieu&nbsp;!" }
      }
    }
    \vspace #1
    \fill-line {
      \left-column {
        \concat { \typewriter "5. " "Pourquoi te désoler, ô mon âme, et gém" \underline i "r sur moi&nbsp;?" }
        \concat { \typewriter "   " "Espère en Dieu ! De nouveau je rendrai grâce&nbsp;: il est mon sauve" \underline u "r et mon Dieu&nbsp;!" }
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