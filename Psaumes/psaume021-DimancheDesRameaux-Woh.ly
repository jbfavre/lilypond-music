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

title = "Psaume 21"
subtitle = \markup { \column { "Dimanche des Rameaux, Passion du Seigneur" "(forme responsoriale)" }}
composer = \markup { \column { "Jean Baptiste Favre" "Benjamin Woh" }}

dedicace = "Clichy la Garenne, mars 2019"

global = {
  \key g \minor
  \time 4/4
}

tempoAntiphon = {
  \set Score.tempoHideNote = ##t
  \tempo 4=80
}
tempoVerseRallentando = {
  \set Score.tempoHideNote = ##t
  \tempo 4=80
}
tempoVerseAcelerando = {
  \set Score.tempoHideNote = ##t
  \tempo 2=80
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoAntiphonMusic = \relative c'' {
  \partial 4
  d4 d2 r4 df4 c2 r4 c4 bf a g a g fs g2 \fermata
  \bar "|." \break
  }

altoAntiphonMusic = \relative c' {
  \partial 4
  d4 e2 r4 g4 a2 r4 a4 a8[ (g8)] g8[ (f)] f8[ (ef8)] ef4 ef d d2 \fermata
  \bar "|."
  }

tenorAntiphonMusic =  \relative c' {
  \partial 4
  d4 bf2 r4 bf4 d2 \breathe d4 (d) d2 bf4 (c8 bf) a4 d8 (c8) bf2 \fermata
  \bar "|."
  }

bassAntiphonMusic =  \relative c {
  \partial 4
  d4 g2 r4 e4 fs2 \breathe d4 (fs?) g (d) ef c d2 <g g,>2 \fermata
  \bar "|."
  }

%{
figuredBass = \figuremode {
    <_>4 <6 5>2. <"?">4 <6 5>2
    <6 5>2 <6 5>2 <7>4 <5/>4 <5 4>4 <7 _+>4 <5>2
  }
harmony = \figuremode {
    <_>4 <I>2. <I>4 <V>2
    <V>2 <VI>2 <IV>4 <IV>4 <V>4 <V>4 <I>2
  }
%}

antiphonLyrics = \lyricmode {
  Mon Dieu, mon Dieu, pour -- quoi m'as -- tu a -- ban -- don -- né&nbsp;?
  }

sopranoAntiphonLyrics = \antiphonLyrics
altoAntiphonLyrics = \antiphonLyrics
tenorAntiphonLyrics = \lyricmode {
  E -- loï, E -- loï, la -- ma sa -- bach -- tha -- ni&nbsp;?
}
bassAntiphonLyrics = \tenorAntiphonLyrics

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%          Verses          %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% quand on a fini de rentrer la musique partout, on peut préciser
% (chez les Soprano uniquement!) les paramètres de tempo MIDI
% en utilisant \tAcce et \tRall

sopranoVerseMusic = \relative c'' {
    \cadenzaOn \caesura
    \tempoVerseAcelerando bf\breve g1 \tempoVerseRallentando a4 \bar "||" \caesura
    \tempoVerseAcelerando a\breve c1 \tempoVerseRallentando bf4 \bar "||" \caesura
    \tempoVerseAcelerando d\breve bf1 \tempoVerseRallentando c4 \bar "||" \caesura
    \tempoVerseAcelerando c\breve bf1 \tempoVerseRallentando d4 \bar "||" \caesura
  }

altoVerseMusic = \relative c'' {
    \caesura
    g\breve e1 ef4 \caesura
    fs\breve fs1 d4 \caesura
    g\breve g1 a4 \caesura
    fs\breve g1 fs4 \caesura
  }

tenorVerseMusic = \relative c' {
    \caesura
    d\breve bf1 c4 \caesura
    c\breve a1 bf4 \caesura
    bf\breve d1 ef4 \caesura
    a,\breve df1 a4 \caesura
  }

bassVerseMusic = \relative c' {
    \caesura
    g\breve g1 g4 \caesura
    d\breve d1 g4 \caesura
    g\breve ef1 g4 \caesura
    d\breve ef1 d4 \caesura
  }

%{

  Tous ceux qui me v_o_ient me bafouent ;
  ils ricanent et h_o_chent la tête :
  « Il comptait sur le Seigne_u_r : qu’il le délivre !
  Qu’il le s_a_uve, puisqu’il est son ami ! »
  
  Oui, des chi_e_ns me cernent,
  une bande de vauri_e_ns m’entoure ;
  Ils me percent les ma_i_ns et les pieds,
  je peux compt_e_r tous mes os.
  
  Ils part_a_gent entre eux mes habits
  et t_i_rent au sort mon vêtement.
  Mais toi, Seigne_u_r, ne sois pas loin :
  ô ma f_o_rce, viens vite à mon aide !
  
  Mais tu m’_a_s répondu !
  Et je proclame ton n_o_m devant mes frères,
  je te loue en pl_e_ine assemblée.
  Vous qui le cr_a_ignez, louez le Seigneur.

%}

verseLyrics = \markup {
  \override #'(font-family . sans)
  \override #'(font-size . 2)
  \fill-line {
    \left-column{
      " "
      " "
      \concat { "Tous ceux qui me " v \underline o ient " me bafouent&nbsp;;" }
      \concat { "ils ricanent et " h \underline o chent " la tête&nbsp;:" }
      \concat { "«&nbsp;Il comptait sur le " Seigne \underline u r&nbsp;: " qu’il le délivre&nbsp;!" }
      \concat { "Qu’il le sauve, puisqu’il " \underline e st " son ami&nbsp;!&nbsp;»" }
      " "
      \concat { "Oui, des " chi \underline e ns " me cernent," }
      \concat { "une bande de " vauri \underline e ns " m’entoure&nbsp;;" }
      \concat { "Ils me percent les " ma \underline i ns " et les pieds," }
      \concat { "je peux " compt \underline e r " tous mes os." }
      " "
      \concat { "Ils partagent entre "  \underline e ux " mes habits" }
      \concat { "et tirent au " s \underline o rt " mon vêtement." }
      \concat { "Mais toi, " Seigne \underline u r, " ne sois pas loin&nbsp;:" }
      \concat { "ô ma force, viens " v \underline i te " à mon aide&nbsp;!" }
      " "
      \concat { "Mais tu " m’ \underline a s " répondu&nbsp;!" }
      \concat { "Et je proclame ton " n \underline o m " devant mes frères," }
      \concat { "je te loue en " pl \underline e ine " assemblée." }
      \concat { "Vous qui le craignez, " lou \underline e z " le Seigneur." }

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

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%         Forme directe        %%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
subtitle = \markup { \column { "Dimanche des Rameaux Passion du Seigneur" "(forme directe)" }}

sopranoVerseMusic = \relative c'' {
    \cadenzaOn \caesura
    \tempoVerseAcelerando bf\breve g1 \tempoVerseRallentando a4 \bar "||" \caesura
    \tempoVerseAcelerando a\breve a1 \tempoVerseRallentando bf4 g4 \bar "||" \caesura
  }

altoVerseMusic = \relative c' {
    \caesura
    d\breve d1 c4 \caesura
    ef\breve fs1 fs4 d4 \caesura
  }

tenorVerseMusic = \relative c' {
    \caesura
    bf\breve bf1 g4 \caesura
    c\breve c1 c4 bf4 \caesura
  }

bassVerseMusic = \relative c' {
    \caesura
    g\breve e1 ef4 \caesura
    fs\breve d1 d4 g4 \caesura
  }

% Load Piano settings & layout
\include "../libs/defaultPianoSettings.ly"
\include "../libs/layouts/commonPiano.ily"
% Load Psalmody layout
\include "../libs/layouts/commonLayout.ily"
\include "../libs/layouts/psalmody.ily"
% Load midi output
\include "../libs/layouts/outputMidi.ily"
