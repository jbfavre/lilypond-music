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

title = "Psaume 103"
subtitle = "Pentecôte"
composer = "Magnificat"
dedicace = "juin 2017"

global = {
  \key ef \major
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoAntiphonMusic = \relative c' {
  \markCustom "Antienne"
  ef8 ef d4. d8 f4 f8 f ef4.  \breathe ef8 f g af4 af8 af c c bf af bf4 bf \fermata \bar "|." \break
  }

altoAntiphonMusic = \relative c' {
  }

tenorAntiphonMusic =  \relative c' {
  }

bassAntiphonMusic =  \relative c {
  }

antiphonLyrics = \lyricmode {
  Ô Sei -- gneur, en -- voie ton Es -- prit
  qui re -- nou -- vel -- le la fa -- ce de la ter -- re!
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
  \markCustom "Psalmodie par strophe" \cadenzaOn
  g\breve bf1 ef,4 \bar "||"
  ef\breve af1 f4 \bar "||"
  g\breve bf1 c4 \bar "||"
  bf\breve a1 g4 \bar "|." \break
  \markCustom "Psalmodie par verset"
  g\breve bf1 f4 \bar "||"
  ef\breve af f4 \bar "|."
  }

altoVerseMusic = \relative c' {
  }

tenorVerseMusic = \relative c' {
  }

bassVerseMusic = \relative c {
  }

verseLyrics = \markup {
  \override #'(font-family . sans)
  \override #'(font-size . 2)
  \column {
    \fill-line {
      \left-column{
        \concat { \typewriter "1. " "Bénis le " Seigne \underline u r, " ô mon âme," }
        \concat { \typewriter "   " "Seigneur mon " Die \underline u, " tu es si grand&nbsp;!" }
        \concat { \typewriter "   " "Quelle profusion dans tes " œ \underline u vres, " Seigneur&nbsp;!" }
        \concat { \typewriter "   " "la terre " s’empl \underline i t " de tes biens." }
      }
      \hspace #1
      \left-column {
        \concat { \typewriter "2. " "Tu reprends leur " so \underline u ffle, " ils expirent" }
        \concat { \typewriter "   " "et " reto \underline u rnent " à leur poussière." }
        \concat { \typewriter "   " "Tu envoies ton " so \underline u ffle&nbsp;: " ils sont créés&nbsp;;" }
        \concat { \typewriter "   " "tu renouvelles la " f \underline a ce " de la terre." }
      }
    }
    \vspace #1
    \fill-line {
      \left-column {
        \concat { \typewriter "3. " "Gloire au " Seigne \underline u r " à tout jamais&nbsp;!" }
        \concat { \typewriter "   " "Que Dieu se " réjou \underline i sse " en ses œuvres&nbsp;!" }
        \concat { \typewriter "   " "Que mon poème lui " s \underline o it " agréable&nbsp;;" }
        \concat { \typewriter "   " "moi, je me " réjou \underline i s " dans le Seigneur." }
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