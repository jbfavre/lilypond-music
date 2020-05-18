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
  \key f \minor
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoAntiphonMusic = \relative c' {
  \markCustom "Antienne"
  %\partial 4 r8 a8 (a8. b16) gs4 r8 c8 (c8. d16) b4. r8 \repeat unfold 3 { s2. }
  \partial 4 f4 c'2 af4 bf2. c4 df bf c (af) g f2. \break
  }


altoAntiphonMusic = \relative c' {
  %\partial 4 r8 e8 (e4) e4 r8 a8 (a4) f4. r8 \repeat unfold 3 { s2. }
  \partial 4 f4 af2 f4 f2. f4 f f e4 c2 c2.
  }

tenorAntiphonMusic = \relative c' {
  %\partial 4 r8 c (c b) b4 r8 c8 (e d) d4. r8 \repeat unfold 3 { s2. }
  \partial 4 r4 f4 f ef d2. bf4 df! df c4 c2 af2.
  }

bassAntiphonMusic = \relative f {
  %\partial 4 a4 e'2 c4 d2 r4 e4 f d c (d) e a,2. \fermata \bar "|." \break
  \partial 4 r4 f4 f c d2. df!4 bf bf c4 e2 f2.
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
  \markCustom "Psalmodie par strophe avec répons" \cadenzaOn
  af\breve g4 af f \bar "|"
  af\breve bf1 c4 \bar "||"
  \cadenzaOff \time 3/4 \mark "℟1" \partial 4 f,4 c'2 af4 bf2. \cadenzaOn  \bar "||" \break
  bf\breve c1 af4 \bar "|"
  bf\breve bf1 c4 \bar "||"
  \cadenzaOff \time 3/4 \mark "℟2" c4 df bf c (af) g f2. \cadenzaOn  \bar "||"
  }

altoVerseMusic = \relative c' {
  \silence \sopranoAntiphonMusic
  f\breve ef4 ef df
  f\breve g1 g4
  \partial 4 f4 af2 f4 f2.
  g\breve g1 f4
  f\breve g1 g4
  f4 f f e4 c2 c2.
  }

tenorVerseMusic = \relative c' {
  \silence \sopranoAntiphonMusic
  c\breve c4 c af
  df\breve df1 e4
  \partial 4 r4 f4 f ef d2.
  ef\breve c1 c4
  df\breve df1 e4
  bf4 df! df c4 c2 af2.
  }

bassVerseMusic = \relative f {
  \silence \sopranoAntiphonMusic
  f\breve c4 c df
  df\breve df1 c4
  \partial 4 r4 f4 f c d2.
  ef\breve e1 f4
  df\breve df1 c4
  df!4 bf bf c4 e2 f2.
  }
verseLyrics = \markup {
  \vspace #3
  \override #'(font-family . sans)
  \override #'(font-size . 2)
  \fill-line {
    \column{
      \concat { \typewriter "1. " "Pitié pour moi, mon Die" \underline u ", dans ton amour," }
      \concat { \typewriter "   " "selon ta grande miséricorde, eff" \underline a "ce mon péché." }
      \concat { \typewriter "   " "Lave-moi tout enti" \underline e "r de ma faute," }
      \concat { \typewriter "   " "purifie-m" \underline o "i de mon offense." }
      " "
      \concat { \typewriter "2. " "Oui, je conn" \underline a "is mon péché," }
      \concat { \typewriter "   " "ma faute est touj" \underline o "urs devant moi." }
      \concat { \typewriter "   " "Contre toi, et toi se" \underline u "l, j’ai péché," }
      \concat { \typewriter "   " "ce qui est mal à tes ye" \underline u "x, je l’ai fait." }
      " "
      \concat { \typewriter "3. " "Crée en moi un cœur p" \underline u "r, ô mon Dieu," }
      \concat { \typewriter "   " "renouvelle et raffermis au fond de m" \underline o "i mon esprit." }
      \concat { \typewriter "   " "Ne me chasse p" \underline a "s loin de ta face," }
      \concat { \typewriter "   " "ne me reprends p" \underline a "s ton esprit saint." }
      " "
      \concat { \typewriter "4. " "Rends-moi la j" \underline o "ie d’être sauvé&nbsp;;" }
      \concat { \typewriter "   " "que l’esprit génére" \underline u "x me soutienne." }
      \concat { \typewriter "   " "Seigneur, " \underline o "uvre mes lèvres," }
      \concat { \typewriter "   " "et ma bouche annoncer" \underline a " ta louange." }
    }
  }
}

reponsSopAltLyrics = \lyricmode { \repeat unfold 7 { _ } ℟&nbsp;:&nbsp;Pi -- tié, Sei -- gneur&nbsp;! \repeat unfold 6 { _ } ℟&nbsp;:&nbsp;car nous a -- vons pé -- ché. }
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