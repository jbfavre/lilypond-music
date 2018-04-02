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

title = "Psaume 117-1"
subtitle = "Résurrection du Seigneur"
composer = "Jean Baptiste Favre"
dedicace = "Abbaye de Solesmes, mars 2018"

%staffCustomSize = 15
%systemToSystemSpacing = 
%  #'((basic-distance . 3)
%     (minimum-distance . 3)
%     (padding . 3)
%     (stretchability . 3))

global = {
  \omit Staff.TimeSignature
  \cadenzaOn
  \key g \major
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoAntiphonMusic = \relative c' {
  \partial 4 d8 g4 g8 a4 a8 b[ c a] g4.
  g8[ a b] a[ b a] g[ e fs] g4. \fermata
  \bar "|." \break
  }

altoAntiphonMusic = \relative c' {
  \partial 4 a8 d4 b8 d4 e8 ds[ fs ds] e4.
  e4 d8 c4 c8 d8[ (d) a] d4. \fermata
  \bar "|." \break
  }

tenorAntiphonMusic =  \relative c {
  \partial 4 fs8 g4 g8 fs4 a8 fs[ b b] b4.
  c4 g8 e4 a8 a[ (a) c] c[ a b] \fermata
  \bar "|." \break
  }

bassAntiphonMusic =  \relative c {
  \partial 4 d8 b4 e8 d4 c8 b[ ds fs] e4 (d8)
  c4 b8 a4 e'8 d[ c a] g4. \fermata
  }

antiphonLyrics = \lyricmode {
    Voi -- ci le jour que fit le Sei -- gneur, qu'il soit pour nous jour de fê -- te~et de joie !
  }

sopranoAntiphonLyrics = \antiphonLyrics
altoAntiphonLyrics = \lyricmode {
    Voi -- ci le jour que fit le Sei -- gneur, jour de fête, de fête~et de joie !
  }
tenorAntiphonLyrics = \lyricmode {
    Voi -- ci le jour que fit le Sei -- gneur, jour de fête, de fête~et de joie !
  }
bassAntiphonLyrics = \lyricmode {
    Voi -- ci le jour que fit le Sei -- gneur, jour de fête, de fête~et de joie !
  }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%          Verses          %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoVerseMusic = \relative c'' {
    \cadenzaOn \caesura
    \tempoVerseAcelerando b\breve b1 \tempoVerseRallentando c4 a b \bar "||" \caesura
    \tempoVerseAcelerando b\breve b1 \tempoVerseRallentando a4 g a \bar "||" \caesura
    \tempoVerseAcelerando a\breve b1 \tempoVerseRallentando a4 g \bar "||" \caesura
    \tempoVerseAcelerando g\breve s8 c1 \tempoVerseRallentando b4 g a g \bar "||"
  }
sopranoVerseRepons = \lyricmode {}
altoVerseMusic = \relative c' {
    \cadenzaOn \caesura
    \tempoVerseAcelerando d\breve d1 \tempoVerseRallentando e4 d d \caesura
    \tempoVerseAcelerando g\breve g1 \tempoVerseRallentando fs4 d fs \caesura
    \tempoVerseAcelerando fs\breve ds1 \tempoVerseRallentando ds4 b4 \bar "||" \caesura
    \tempoVerseAcelerando e\breve s8 a1 \tempoVerseRallentando g4 e e8 (fs) d4 \bar "||"
  }

tenorVerseMusic = \relative c' {
    \cadenzaOn \caesura
    \tempoVerseAcelerando b\breve b1 \tempoVerseRallentando g4 fs g \caesura
    \tempoVerseAcelerando d'\breve e1 \tempoVerseRallentando a,4 b a \caesura
    \tempoVerseAcelerando b\breve fs1 \tempoVerseRallentando b4 b \bar "||" \caesura
    \tempoVerseAcelerando c\breve s8 e1 \tempoVerseRallentando b4 c a4 b4 \bar "||"
  }

bassVerseMusic = \relative c' {
    \cadenzaOn \caesura
    \tempoVerseAcelerando g\breve g1 \tempoVerseRallentando c,4 d g \caesura
    \tempoVerseAcelerando g\breve e1 \tempoVerseRallentando d4 b d \caesura
    \tempoVerseAcelerando ds\breve b1 \tempoVerseRallentando ds4 e8[ (d)] \bar "||" \caesura
    \tempoVerseAcelerando c\breve b8 a1 \tempoVerseRallentando e'4 c cs8 (d) g,4 \bar "||"
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

Rendez grâce au Seigne_u_r : Il est bon !
Étern_e_l est son amour !
Oui, que le d_i_se Israël :
Étern_e_l est son amour !

Le bras du Seigne_u_r se lève,
le bras du Seigne_u_r est fort !
Non, je ne mourrai p_a_s, je vivrai
pour annoncer les acti_o_ns du Seigneur.

La pierre qu’ont rejet_é_e les bâtisseurs
est deven_u_e la pierre d’angle :
c’est là l’œ_u_vre du Seigneur,
la merv_e_ille devant nos yeux.

%}

verseLyrics = \markuplist {
  \override #'(font-name . "Latin Modern Sans")
  \override #'(font-size . 3)
  \fill-line {
    \column{
      \concat { "Rendez grâce au Seigne" \underline u "r&nbsp;: Il est bon&nbsp;!"}
      \concat { "Étern" \underline e "l est son amour&nbsp;!"}
      \concat { "Oui, que le d" \underline i "se Israël&nbsp;:"}
      \concat { "Étern" \underline e "l est son amour&nbsp;!"}
      " "
      \concat { "Le bras du Seigne" \underline u "r se lève,"}
      \concat { "le bras du Seigne" \underline u "r est fort&nbsp;!"}
      \concat { "Non, je ne mourrai p" \underline a "s, je vivrai"}
      \concat { "pour annoncer les acti" \underline o "ns du Seigneur."}
      " "
      \concat { "La pierre qu’ont rejet" \underline é "e les bâtisseurs"}
      \concat { "est deven" \underline u "e la pierre d’angle&nbsp;:"}
      \concat { "c’est là l’œ" \underline u "vre du Seigneur,"}
      \concat { "la merv" \underline e "ille devant nos yeux."}
    }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%          Draw score          %%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\include "../libs/layouts/commonLayout.ily"
\include "../libs/layouts/psalmody.ily"
\include "../libs/layouts/outputMidi.ily"
