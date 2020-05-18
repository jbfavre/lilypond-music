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

title = "Psaume 144-7"
subtitle = \markup { \column { "14e dimanche du temps ordinaire" "Année A" }}
composer = "Jean Baptiste Favre"
dedicace = "Clichy la Garenne, mai 2020"

global = {
  \key d \minor
  \time 2/4
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoAntiphonMusic = \relative c' {
  \markCustom "Antienne"
  \partial 8 d8 a'4. b8 g4. a8 bf! g e g f g a f g4 f e2 \fermata \bar "|." \break
  }

altoAntiphonMusic = \relative c' {
  \partial 8 d8 f4. f8 d4. d8 g e d e d d f d d4 d cs2 \fermata
  }

tenorAntiphonMusic =  \relative c' {
  \partial 8 d8 d4. a8 b4. b!8 bf! bf bf bf a a d a bf4 a a2 \fermata
  }

bassAntiphonMusic =  \relative c {
  \partial 8 d8 d4. d8 d4. d8 d d d d d d d d g,4 d' a2 \fermata
  }

antiphonLyrics = \lyricmode {
  Mon Dieu, mon Roi, je bé -- ni -- rai ton nom tou -- jours et à ja -- mais&nbsp;!
  }
sopranoAntiphonLyrics = \antiphonLyrics
altoAntiphonLyrics = \antiphonLyrics
tenorAntiphonLyrics = \antiphonLyrics
bassAntiphonLyrics = \tenorAntiphonLyrics

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%     Verses     %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoVerseMusic = \relative c'' {
  \silence \sopranoAntiphonMusic
  \markCustom "Psalmodie par verset" \cadenzaOn
  a\breve g1 b!4 a \bar "||"
  bf\breve g1 a4 \bar "|." \break
  }

altoVerseMusic = \relative c' {
  \silence \sopranoAntiphonMusic
  f\breve d1 g4 f
  g\breve e1 f4
  }

tenorVerseMusic = \relative c' {
  \silence \sopranoAntiphonMusic
  d\breve b!1 g4 d'
  e\breve bf1 d4
  }

bassVerseMusic = \relative f {
  \silence \sopranoAntiphonMusic
  d\breve d1 d4 d
  d\breve d1 d4
  }

verseLyrics = \markup {
  \vspace #5
  \override #'(font-family . sans)
  \override #'(font-size . 2)
  \fill-line {
    \left-column{
      \concat { \typewriter "1. " "Je t’exalterai, mon Die" \underline u ", mon Roi," }
      \concat { \typewriter "   " "je bénirai ton nom toujo" \underline u "rs et à jamais!" }
      \concat { \typewriter "   " "Chaque jour je te b" \underline é "nirai," }
      \concat { \typewriter "   " "je louerai ton nom toujo" \underline u "rs et à jamais." }
      \vspace #1
      \concat { \typewriter "2. " "Le Seigneur est tendr" \underline e "sse et pitié," }
      \concat { \typewriter "   " "lent à la col" \underline è "re et plein d’amour&nbsp;;" }
      \concat { \typewriter "   " "la bonté du Seigne" \underline u "r est pour tous," }
      \concat { \typewriter "   " "sa tendresse, pour to" \underline u "tes ses œuvres." }
    }
    \hspace #1
    \left-column {
      \concat { \typewriter "3. " "Que tes œuvres, Seigne" \underline u "r, te rendent grâce" }
      \concat { \typewriter "   " "et que tes fid" \underline è "les te bénissent&nbsp;!" }
      \concat { \typewriter "   " "Ils diront la gl" \underline o "ire de ton règne," }
      \concat { \typewriter "   " "ils parler" \underline o "nt de tes exploits." }
      \vspace #1
      \concat { \typewriter "4. " "Le Seigneur est vrai en t" \underline o "ut ce qu’il dit," }
      \concat { \typewriter "   " "fidèle en to" \underline u "t ce qu’il fait." }
      \concat { \typewriter "   " "Le Seigneur souti" \underline e "nt tous ceux qui tombent," }
      \concat { \typewriter "   " "il redresse to" \underline u "s les accablés." }
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