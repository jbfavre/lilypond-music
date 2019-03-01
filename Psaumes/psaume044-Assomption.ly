\version "2.18.2"
\language "english"
%{
  Default settings are needed at the beginning
  because they are used in antiphon & verse music definition
  You can override default values simply by declaring variables again.
%}
\include "../libs/commonFunctions.ily"
\include "../libs/settings.ily"
\include "../libs/translations/fr.ily"
\include "../libs/psalmody.ily"

title = "Psaume 44"
subtitle = "Solennité de l'Assomption"
composer = "Jean Baptiste Favre"
dedicace = "Île d'Hœdic, août 2018"

global = {
  \key a \major
  \time 3/8
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoAntiphonMusic = \relative c' {
  \partial 8 e8 e c d e e f! a (gs! f!) e4. \breathe
  d8 e e fs! fs e d cs! d e4. \fermata
  \bar "|." \break
  }

altoAntiphonMusic = \relative c' {
  \partial 8 s8 s4. s4. s4. s4.
  s4. s4. s4. s4.
  }

tenorAntiphonMusic =  \relative c' {
  \partial 8 s8 s4. s4. s4. s4.
  s4. s4. s4. s4.
  }

bassAntiphonMusic =  \relative c {
  \partial 8 s8 s4. s4. s4. s4.
  s4. s4. s4. s4.
  }

antiphonLyrics = \lyricmode {
  De -- bout, à la droi -- te du Sei -- gneur,
  se tient la rei -- ne, tou -- te pa -- rée d’or.
  }

sopranoAntiphonLyrics = \antiphonLyrics
altoAntiphonLyrics = \antiphonLyrics
tenorAntiphonLyrics = \antiphonLyrics
bassAntiphonLyrics = \antiphonLyrics

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%          Verses          %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% quand on a fini de rentrer la musique partout, on peut préciser
% (chez les Soprano uniquement!) les paramètres de tempo MIDI
% en utilisant \tAcce et \tRall

sopranoVerseMusic = \relative c' {
  \cadenzaOn \caesura
  e\breve f!4 d e \bar "||"
  e\breve a1 gs!4 f e \bar "||"
  d\breve fs1 e4 d e \bar "||"
  }

altoVerseMusic = \relative c' {
  \cadenzaOn \caesura
  s\breve s4 s s \bar "||"
  s\breve s1 s4 s s \bar "||"
  s\breve s1 s4 s s \bar "||"
  }

tenorVerseMusic = \relative c' {
  \cadenzaOn \caesura
  s\breve s4 s s \bar "||"
  s\breve s1 s4 s s \bar "||"
  s\breve s1 s4 s s \bar "||"
  }

bassVerseMusic = \relative c {
  \cadenzaOn \caesura
  a\breve f4 g c \bar "||"
  a\breve d1 e4 gs! a \bar "||"
  g,\breve d'1 b4 b a \bar "||"
  }

%{

Écoute, ma fille, regarde et tends l’oreille ;
oublie ton peuple et la maison de ton père :
le roi sera séduit par ta beauté.

Il est ton Seigneur : prosterne-toi devant lui.
Alors, les plus riches du peuple,
chargés de présents, quêteront ton sourire.

Fille de roi, elle est là, dans sa gloire,
vêtue d’étoffes d’or ;
on la conduit, toute parée, vers le roi.

Des jeunes filles, ses compagnes, lui font cortège ;
on les conduit parmi les chants de fête :
elles entrent au palais du roi.

%}

verseLyrics = \markup {
{
  \override #'(font-name . "Latin Modern Sans")
  \override #'(font-size . 3)
  \fill-line {
    \left-column{
      " "
      " "
      \concat { "Écoute, ma fille, reg" \underline a "rde et tends l’oreille ;"}
      \concat { "oublie ton peuple et la mais" \underline o "n de ton père :"}
      \concat { "le roi sera sédu" \underline i "t par ta beauté."}
      " "
      \concat { "Il est ton Seigneur : prosterne-t" \underline o "i devant lui."}
      \concat { "Alors, les plus r" \underline i "ches du peuple,"}
      \concat { "chargés de présents, quêter" \underline o "nt ton sourire."}
      " "
      \concat { "Fille de roi, elle est l" \underline à ", dans sa gloire,"}
      \concat { "vêt" \underline u "e d’étoffes d’or ;"}
      \concat { "on la conduit, toute par" \underline é "e, vers le roi."}
      " "
      \concat { "Des jeunes filles, ses compagnes, lui f" \underline o "nt cortège ;"}
      \concat { "on les conduit parmi les ch" \underline a "nts de fête :"}
      \concat { "elles " \underline e "ntrent au palais du roi."}
    }
  }
}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%          Draw score          %%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Load Piano settings & layout
\include "../libs/defaultPianoSettings.ly"
\include "../libs/layouts/commonPiano.ily"
% Load Psalmody layout
\include "../libs/layouts/commonLayout.ily"
\include "../libs/layouts/psalmody.ily"
% Load midi output
\include "../libs/layouts/outputMidi.ily"