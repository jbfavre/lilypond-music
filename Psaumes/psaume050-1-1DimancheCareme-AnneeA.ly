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

title = "Psaume 50-1"
subtitle = "1er Dimanche de Carême"
composer = "Jean Baptiste Favre"
dedicace = "Clichy la Garenne, février 2020"

global = {
  \time 3/4
  \key a \minor
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoAntiphonMusic = \relative c'' {
  \markCustom "Antienne"
  \partial 4 r8 a8 (a8. b16) gs4 r8 c8 (c8. d16) b4. r8 \repeat unfold 3 { s2. }
  }


altoAntiphonMusic = \relative c' {
  \partial 4 r8 e8 (e4) e4 r8 a8 (a4) f4. r8 \repeat unfold 3 { s2. }
  }

tenorAntiphonMusic = \relative c' {
  \partial 4 r8 c (c b) b4 r8 c8 (e d) d4. r8 \repeat unfold 3 { s2. }
  }

bassAntiphonMusic = \relative f, {
  \partial 4 a4 e'2 c4 d2 r4 e4 f d e (c) b a2. \fermata \bar "|." \break
  }

antiphonLyrics = \lyricmode {
  Pi -- tié, Sei -- gneur, car nous a -- vons pé -- ché.
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
  a\breve a1 a4 \bar "|"
  a\breve a1 a4 \bar "||" \break
  }

altoVerseMusic = \relative c' {
  \silence \sopranoAntiphonMusic
  e\breve e1 e4
  e\breve e1 e4
  }

tenorVerseMusic = \relative c' {
  \silence \sopranoAntiphonMusic
  c\breve c1 c4
  c\breve c1 c4
  }

bassVerseMusic = \relative f, {
  \silence \sopranoAntiphonMusic
  a\breve a1 a4
  a\breve a1 a4
  }
verseLyrics = \markup {
  \vspace #3
  \override #'(font-family . sans)
  \override #'(font-size . 2)
  \fill-line {
    \column{
      \concat { \typewriter "1. " "Pitié pour moi, mon Dieu, dans ton amour," }
      \concat { \typewriter "   " "selon ta grande miséricorde, efface mon péché." }
      \concat { \typewriter "   " "Lave-moi tout entier de ma faute," }
      \concat { \typewriter "   " "purifie-moi de mon offense." }
      " "
      \concat { \typewriter "2. " "Oui, je connais mon péché," }
      \concat { \typewriter "   " "ma faute est toujours devant moi." }
      \concat { \typewriter "   " "Contre toi, et toi seul, j’ai péché," }
      \concat { \typewriter "   " "ce qui est mal à tes yeux, je l’ai fait." }
      " "
      \concat { \typewriter "3. " "Crée en moi un cœur pur, ô mon Dieu," }
      \concat { \typewriter "   " "renouvelle et raffermis au fond de moi mon esprit." }
      \concat { \typewriter "   " "Ne me chasse pas loin de ta face," }
      \concat { \typewriter "   " "ne me reprends pas ton esprit saint." }
      " "
      \concat { \typewriter "4. " "Rends-moi la joie d’être sauvé&nbsp;;" }
      \concat { \typewriter "   " "que l’esprit généreux me soutienne." }
      \concat { \typewriter "   " "Seigneur, ouvre mes lèvres," }
      \concat { \typewriter "   " "et ma bouche annoncera ta louange." }
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
    %\pageBreak
    % Psalmodie à 4 voix mixtes
    \include "../libs/layouts/commonVerseFourVoices.ily"
    %\new FiguredBass { \figuredBass \verseFiguredBass }
    %\new FiguredBass { \harmony \verseHarmony }
  >>
}
% Load PDF output
\include "../libs/layouts/outputPDF.ily"
\verseLyrics