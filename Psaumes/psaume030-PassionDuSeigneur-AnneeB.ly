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

title = "Psaume 30"
subtitle = "Passion du Seigneur"
composer = "Jean Baptiste Favre"

%staffCustomSize = 15
%systemToSystemSpacing = 
%  #'((basic-distance . 3)
%     (minimum-distance . 3)
%     (padding . 3)
%     (stretchability . 3))

global = {
  \omit Staff.TimeSignature
  
  \key d \minor
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoAntiphonMusic = \relative c' {
  \partial 2 d2 a'2. a4 g2 a f2
  e8 f g4 f2 e d1 \fermata
  \bar "|." \break
  }

altoAntiphonMusic = \relative c' {
  \partial 2 bf2 f'2. f4 e2 e2 d2 d8 d d4 d2 d4 (c) a1
  }

tenorAntiphonMusic =  \relative c' {
  \partial 2 g2 a2. a4 g2 c bf bf8 a bf4 a2 a f1
  }

bassAntiphonMusic =  \relative c {
  \partial 2 e2 d2. c4 bf2 a bf4 a
  g4 e f (g) a2 d1 \fermata
  }

antiphonLyrics = \lyricmode {
    Ô Pè -- re, en tes mains je re -- mets mon es -- prit.
  }

sopranoAntiphonLyrics = \antiphonLyrics
altoAntiphonLyrics = \antiphonLyrics
tenorAntiphonLyrics = \antiphonLyrics
bassAntiphonLyrics = \antiphonLyrics

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%          Verses          %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoVerseMusic = \relative c' {
    \cadenzaOn \caesura
    \tempoVerseAcelerando f\breve g1 \tempoVerseRallentando a4 \bar "||" \caesura
    \tempoVerseAcelerando f\breve e1 \tempoVerseRallentando e4 e d \bar "||" \caesura
  }

altoVerseMusic = \relative c' {
    \cadenzaOn \caesura
    \tempoVerseAcelerando d\breve d1 \tempoVerseRallentando e4 \bar "||" \caesura
    \tempoVerseAcelerando d\breve d1 \tempoVerseRallentando d4 c a \bar "||" \caesura
  }

tenorVerseMusic = \relative c' {
    \cadenzaOn \caesura
    \tempoVerseAcelerando a\breve bf1 \tempoVerseRallentando c4 \bar "||" \caesura
    \tempoVerseAcelerando bf\breve bf1 \tempoVerseRallentando a4 a f \bar "||" \caesura
  }

bassVerseMusic = \relative c {
    \cadenzaOn \caesura
    \tempoVerseAcelerando d\breve bf1 \tempoVerseRallentando a4 \caesura
    \tempoVerseAcelerando bf\breve g1 \tempoVerseRallentando a4 a d \caesura
   }

groupedVersesLyrics = <<
>>

figuredBass = \figuremode {
  }
harmony = \figuremode {
  }

verseFiguredBass = \figuremode {
  }
verseHarmony = \figuremode {
  }

\include "../libs/defaultPianoSettings.ly"
\include "../libs/layouts/commonPiano.ily"

%{

En toi, Seigneur, j’ai mon refuge ;
garde-moi d’être humilié pour toujours.
En tes mains je remets mon esprit ;
tu me rachètes, Seigneur, Dieu de vérité.

Je suis la risée de mes adversaires
et même de mes voisins ;
je fais peur à mes amis,
s’ils me voient dans la rue, ils me fuient.

On m’ignore comme un mort oublié,
comme une chose qu’on jette.
J’entends les calomnies de la foule :
ils s’accordent pour m’ôter la vie.

Moi, je suis sûr de toi, Seigneur,
je dis : « Tu es mon Dieu ! »
Mes jours sont dans ta main : délivre-moi
des mains hostiles qui s’acharnent.

Sur ton serviteur, que s’illumine ta face ;
sauve-moi par ton amour.
Soyez forts, prenez courage,
vous tous qui espérez le Seigneur !

%}

verseLyrics = \markuplist {
  \override #'(font-name . "Latin Modern Sans")
  \override #'(font-size . 3)
  \fill-line {
    \hspace #0.0001
    \column{
      \vspace #1
      \concat { "En toi, Seigne" \underline u "r, j’ai mon refuge&nbsp;;"}
      \concat { "garde-moi d’être humili" \underline é " pour toujours."}
      \concat { "En tes mains je rem" \underline e "ts mon esprit&nbsp;;"}
      \concat { "tu me rachètes, Seigneur, Die" \underline u " de vérité."}
      " "
      \concat { "Je suis la ris" \underline é "e de mes adversaires"}
      \concat { "et m" \underline ê "me de mes voisins&nbsp;;"}
      \concat { "je fais pe" \underline u "r à mes amis,"}
      \concat { "s’ils me voient dans la r" \underline u "e, ils me fuient."}
      " "
      \concat { "On m’ignore comme un m" \underline o "rt oublié,"}
      \concat { "comme une ch" \underline o "se qu’on jette."}
      \concat { "J’entends les calomn" \underline i "es de la foule&nbsp;:"}
      \concat { "ils s’accordent pour m’ôt" \underline e "r la vie."}
    }
    \hspace #0.0001
    \column {
      \vspace #1
      \concat { "Moi, je suis sûr de t" \underline o "i, Seigneur,"}
      \concat { "je dis : «&nbsp;Tu " \underline e "s mon Dieu&nbsp;!&nbsp;»"}
      \concat { "Mes jours sont dans ta m" \underline a "in&nbsp;: délivre-moi"}
      \concat { "des mains host" \underline i "les qui s’acharnent."}
      " "
      \concat { "Sur ton serviteur, que s’illum" \underline i "ne ta face&nbsp;;"}
      \concat { "sauve-m" \underline o "i par ton amour."}
      \concat { "Soyez f" \underline o "rts, prenez courage,"}
      \concat { "vous tous qui espér" \underline e "z le Seigneur&nbsp;!"}
    }
  }
  \override #'(font-name . "Latin Modern Sans")
  \override #'(font-size . 2)
  \fill-line {
    \vspace #5
    \concat {
      \underline "Consignes d'exécution:"
      " L'antienne n'est chantée qu'en début et en fin du psaume."
    }
  }
  \override #'(font-name . "Latin Modern Sans")
  \override #'(font-size . 2)
  \fill-line {
    "Les versets sont alternés entre le psalmiste (ou le chœur) et l'assemblée."
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%          Draw score          %%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\include "../libs/layouts/commonLayout.ily"
\include "../libs/layouts/psalmody.ily"
\include "../libs/layouts/outputMidi.ily"