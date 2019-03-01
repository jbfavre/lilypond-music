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
tempoAntiphon = {
  \set Score.tempoHideNote = ##t
  \tempo 4=70
}

tempoVerseRallentando = {
  \set Score.tempoHideNote = ##t
  \tempo 4=70
}
tempoVerseAcelerando = {
  \set Score.tempoHideNote = ##t
  \tempo 2=70
}

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
   d8 f a bf a4. g8 a2
   bf8 a g f e2 c4 e d2 \fermata
   \bar "|." \break
  }

altoAntiphonMusic = \relative c' {
  a8 d f e f4 f4 e2
  g8 f d a c2 c4 c a2
  }

tenorAntiphonMusic =  \relative c' {
  f,8 a c c d4 d d4 (cs)
  d8[ c] bf f g2 a4. g8 f2
  }

bassAntiphonMusic =  \relative c {
  d8 d c c b4 bf a2
  g8[ a] bf d c2 a4 a <d d,>2
  }

antiphonLyrics = \lyricmode {
    Tou -- tes les na -- tions, Sei -- gneur,
    se pro -- ster -- ne -- ront de -- vant toi.
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
    \tempoVerseAcelerando d\breve a'!1 \tempoVerseRallentando g4 af a \bar "||" \caesura
    \tempoVerseAcelerando a\breve c1 \tempoVerseRallentando b!4 g a \bar "||" \caesura
    \tempoVerseAcelerando a\breve f1 \tempoVerseRallentando g4 f e \bar "||" \caesura
    \tempoVerseAcelerando e\breve f1 \tempoVerseRallentando g8[ \parenthesizeAll f] e4 d \bar "|."
  }

altoVerseMusic = \relative c' {
  a\breve f'1 f4 f e
  f\breve g1 g4 e e
  f\breve d1 d4 d d
  cs\breve d1 d4 d8[ \parenthesizeAll cs!] a4
  }

tenorVerseMusic = \relative c' {
  f,\breve c'!1 d4 d cs
  d\breve e1 d4 d cs!
  a\breve a1 g4 g bf
  a\breve a1 bf4 a f
  }

bassVerseMusic = \relative c {
    d\breve c1 b4 bf a
    d\breve c1 g4 b a
    d\breve c1 b!4 bf g
    a\breve d1 g,4 a <d d,>
    \once \override Score.RehearsalMark.extra-offset = #'(-25 . -27)
    %\mark \markup { \typewriter \small
    %  \column {
    %    \line { "* Les notes entre parenthèses constituent"}
    %    \line { "  des indications pour l'accompagnement"}
    %    \line {"  et ne sont pas psalmodiées"}
    %  }
    %}
  }

%{
figuredBass = \figuremode {
    <5>4 <6 4> <5 7> <5 6> <5 _+>2
    <5>4 <5 6>4 <5>2 <5>4 <5> <5>2
  }
harmony = \figuremode {
    <I>4 <III> <I> <VI> <V>2
    <IV>4 <VI> <VII>2 <V>4 <IV> <I>2
  }
%}
%{
verseFiguredBass = \figuremode {
    <5>\breve <6 4>1 <6 5>4 <7> <5 _+>2
    <5>\breve <5>1 <5>4 <7> <5 _+>2
    <5>\breve <6 4>1 <6 5>4 <7> <5 6\+>2
    <7 _\+>\breve <5>1 <5>4 <5>4  <5>2
  }
verseHarmony = \figuremode {
    <I>\breve <III>1 <IV>4 <VI> <V>2
    <I>\breve <VII>1 <IV>4 <II> <III>2
    <I>\breve <III>1 <IV>4 <VI> <IV>2
    <V>\breve <I>1 <IV>4 <V> <I>2
  }
%}

%{

Dieu, donne au r_o_i tes pouvoirs,
à ce fils de r_o_i ta justice.
Qu’il gouverne ton pe_u_ple avec justice,
qu’il fasse dr_o_it aux malheureux !

En ces jours-là, fleurir_a_ la justice,
grande paix jusqu’à la f_i_n des lunes !
Qu’il domine de la m_e_r à la mer,
et du Fleuve jusqu’au bo_u_t de la terre !

Les rois de Tarsis et des Îles apporter_o_nt des présents.
Les rois de Saba et de Seba fer_o_nt leur offrande.
Tous les rois se prosterner_o_nt devant lui,
tous les pa_y_s le serviront.

Il délivrera le pa_u_vre qui appelle
et le malheure_u_x sans recours.
Il aura souci du f_a_ible et du pauvre,
du pauvre dont il sa_u_ve la vie.

%}

verseLyrics = \markup {
  \override #'(font-name . "Latin Modern Sans")
  \override #'(font-size . 3)
  \fill-line {
    \left-column{
      " "
      " "
      \concat { "Dieu, donne au " r \underline o i " tes pouvoirs,"}
      \concat { "à ce fils de " r \underline o i " ta justice."}
      \concat { "Qu’il gouverne ton " pe \underline u ple " avec justice,"}
      \concat { "qu’il fasse " dr \underline o it " aux malheureux !"}
      " "
      \concat { "En ces jours-là, " fleurir \underline a " la justice,"}
      \concat { "grande " pa \underline i x " jusqu’à la fin des lunes !"}
      \concat { "Qu’il domine de la " m \underline e r " à la mer,"}
      \concat { "et du Fleuve jusqu’au " bo \underline u t " de la terre !"}
      " "
      \concat { "Les rois de Tarsis et des Îles " apporter \underline o nt " des présents."}
      \concat { "Les rois de Saba et de Seba " fer \underline o nt " leur offrande."}
      \concat { "Tous les rois se " prosterner \underline o nt " devant lui,"}
      \concat { "tous les " pa \underline y s " le serviront."}
      " "
      \concat { "Il délivrera le " pa \underline u vre " qui appelle"}
      \concat { "et le " malheure \underline u x " sans recours."}
      \concat { "Il aura souci du " f \underline a ible " et du pauvre,"}
      \concat { "du pauvre dont il " sa \underline u ve " la vie."}
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