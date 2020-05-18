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

title = "Psaume 62-3"
subtitle = "32ème dimanche du Temps Ordinaire — Année A"
composer = "Jean Baptiste Favre"
dedicace = "Clichy la Garenne, 29 septembre 2017"

global = {
    \time 2/4
    \key c \major
  }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoAntiphonMusic = \relative c'' {
  \markCustom "Antienne"
  \partial 4 g4 b a b c b2 (b4) \breathe b4 d2 c2 b2 \fermata \bar "|." \break
  }

altoAntiphonMusic = \relative c' {
  \partial 4 g'4 g c, f g g4 \breathe g4 (g2) a2 e2 a4 (g) \fermata
  }

tenorAntiphonMusic =  \relative c' {
  \partial 4 g4 b f a e b'4 \breathe c4 (b2) c2 c2 b2 \fermata
  }

bassAntiphonMusic =  \relative c {
  \partial 4 g'4 e c d c e4 \breathe e4 (e2) f2 a,2 <e e'>2 \fermata
  }

antiphonLyrics = \lyricmode {
    Mon â -- me~a soif de toi, Sei -- gneur, mon Dieu!
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
  \override HorizontalBracket.direction = #UP
  b\breve a4
      \startGroup^\markup { \typewriter "flexe" } b1\stopGroup
      c1 a4 \bar "||"
  a\breve g1 b4 \bar "||"
  b\breve d1 c4 \bar "||"
  c\breve b1 g4 f a \bar "|."
  }

altoVerseMusic = \relative c' {
  \silence \sopranoAntiphonMusic
  g'\breve e4 c1 e1 f4
  f\breve d1 g4
  d\breve f1 e4
  f\breve f1 d4 d e
 }

tenorVerseMusic = \relative c' {
  \silence \sopranoAntiphonMusic
  b\breve c4 a1 c1 c4
  d\breve b1 d4
  a\breve c1 c4
  c\breve d1 b4 a c
  }

bassVerseMusic = \relative c {
  \silence \sopranoAntiphonMusic
  e\breve a,4\startGroup-\markup { \typewriter "flexe" } f1\stopGroup a1 d4
  d\breve e1 g4
  f\breve a1 a4
  a\breve g1 e4 f a,
  }

verseLyrics = \markup {
  \vspace #5
  \override #'(font-family . sans)
  \override #'(font-size . 2)
  \fill-line {
    \left-column{
      \concat { \typewriter "1. " "Dieu, tu es mon Di" \underline e "u," \super "&dagger;"}
      \concat { \typewriter "   " "     je te ch" \underline e "rche dès l’aube :"}
      \concat { \typewriter "   " "mon âme a so" \underline i "f de toi ;"}
      \concat { \typewriter "   " "après toi langu" \underline i "t ma chair,"}
      \concat { \typewriter "   " "terre ar" \underline i "de, altérée, sans eau."}
      \vspace #1
      \concat { \typewriter "2. " "Je t’ai contempl" \underline é " au sanctuaire,"}
      \concat { \typewriter "   " "j’ai vu ta f" \underline o "rce et ta gloire."}
      \concat { \typewriter "   " "Ton amour vaut m" \underline i "eux que la vie :"}
      \concat { \typewriter "   " "tu seras la lou" \underline a "nge de mes lèvres !"}
    }
    \hspace #1
    \left-column {
      \concat { \typewriter "3. " "Toute ma v" \underline i "e je vais te bénir,"}
      \concat { \typewriter "   " "lever les mains en invoqu" \underline a "nt ton nom."}
      \concat { \typewriter "   " "Comme par un fest" \underline i "n je serai rassasié ;"}
      \concat { \typewriter "   " "la joie sur les lèvres, je dir" \underline a "i ta louange."}
      \vspace #1
      \concat { \typewriter "4. " "Dans la nuit, je me souv" \underline i "ens de toi"}
      \concat { \typewriter "   " "et je reste des h" \underline e "ures à te parler."}
      \concat { \typewriter "   " "Oui, tu es ven" \underline u " à mon secours :"}
      \concat { \typewriter "   " "je crie de joie à l’" \underline o "mbre de tes ailes."}
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