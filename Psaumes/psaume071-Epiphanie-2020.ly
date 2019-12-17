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

title = "Psaume 71-2"
subtitle = "Épiphanie du Seigneur"
composer = "Jean Baptiste Favre"
dedicace = "Clichy la Garenne, 7 décembre 2017"

global = {
  \time 2/4
  \key d \minor
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoAntiphonMusic = \relative c' {
  \markCustom "Antienne"
  d8 f f g  a4. bf8 a2 bf8 a g f e2 c4 e d2 \fermata \bar "|." \break
  }

altoAntiphonMusic = \relative c' {
  %a8 d f e f4 f4 e2 g8 f d a c2 c4 c a2
  }

tenorAntiphonMusic =  \relative c' {
  %f,8 a c c d4 d d4 (cs) d8[ c] bf f g2 a4. g8 f2
  }

bassAntiphonMusic =  \relative c {
  d8 d bf bf f4 g a2 g8[ a] bf d c2 g4 a <d d,>2
  }

antiphonLyrics = \lyricmode {
  Tou -- tes les na -- tions, Sei -- gneur, se pro -- ster -- ne -- ront de -- vant toi.
  }

sopranoAntiphonLyrics = \antiphonLyrics
altoAntiphonLyrics = \antiphonLyrics
tenorAntiphonLyrics = \antiphonLyrics
bassAntiphonLyrics = \antiphonLyrics

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%          Verses          %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoVerseMusic = \relative c' {
  \silence \sopranoAntiphonMusic
  \markCustom "Psalmodie" \cadenzaOn
  d\breve a'!1 g4 af a \bar "||"
  a\breve c1 b!4 g a \bar "||" \break
  a\breve f1 g4 f e \bar "||"
  e\breve f1 g8[ \parenthesizeAll f] e4 d \bar "|."
  }

altoVerseMusic = \relative c' {
  \silence \sopranoAntiphonMusic
  a\breve f'1 f4 f e
  f\breve g1 g4 e e
  f\breve d1 d4 d d
  cs\breve d1 d4 d8[ \parenthesizeAll cs!] a4
  }

tenorVerseMusic = \relative c' {
  \silence \sopranoAntiphonMusic
  f,\breve c'!1 d4 d cs
  d\breve e1 d4 d cs!
  a\breve a1 g4 g bf
  a\breve a1 bf4 a f
  }

bassVerseMusic = \relative c {
  \silence \sopranoAntiphonMusic
  d\breve c1 b4 bf a
  d\breve c1 g4 b a
  d\breve c1 b!4 bf g
  a\breve d1 g,4 a <d d,>
  }

verseLyrics = \markup {
  \vspace #3
  \override #'(font-family . sans)
  \override #'(font-size . 2)
  \fill-line {
    \left-column{
      \concat { \typewriter "1. " "Dieu, donne au r" \underline o "i tes pouvoirs,"}
      \concat { \typewriter "   " "à ce fils de r" \underline o "i ta justice."}
      \concat { \typewriter "   " "Qu’il gouverne ton pe" \underline u "ple avec justice,"}
      \concat { \typewriter "   " "qu’il fasse dr" \underline o "it aux malheureux !"}
      \vspace #1
      \concat { \typewriter "2. " "En ces jours-là, fleurir" \underline a " la justice,"}
      \concat { \typewriter "   " "grande pa" \underline i "x jusqu’à la fin des lunes !"}
      \concat { \typewriter "   " "Qu’il domine de la m" \underline e "r à la mer,"}
      \concat { \typewriter "   " "et du Fleuve jusqu’au bo" \underline u "t de la terre !"}
    }
    \left-column {
      \concat { \typewriter "3. " "Les rois de Tarsis et des Îles apporter" \underline o "nt des"}
      \concat { \typewriter "   " "  présents."}
      \concat { \typewriter "   " "Les rois de Saba et de Seba fer" \underline o "nt leur"}
      \concat { \typewriter "   " "  offrande."}
      \concat { \typewriter "   " "Tous les rois se prosterner" \underline o "nt devant lui,"}
      \concat { \typewriter "   " "tous les " pa \underline y s " le serviront."}
      \vspace #1
      \concat { \typewriter "4. " "Il délivrera le pa" \underline u "vre qui appelle"}
      \concat { \typewriter "   " "et le malheure" \underline u "x sans recours."}
      \concat { \typewriter "   " "Il aura souci du f" \underline a "ible et du pauvre,"}
      \concat { \typewriter "   " "du pauvre dont il sa" \underline u "ve la vie."}
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