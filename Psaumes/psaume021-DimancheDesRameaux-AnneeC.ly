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
subtitle = "Dimanche des Rameaux et de la Passion du Seigneur - Année C"
composer = "Jean Baptiste Favre"
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
  d4 d r2 df4 c r2 a4 bf g ef a g fs g2 \fermata
  \bar "|." \break
  }

altoAntiphonMusic = \relative c'' {
  \partial 4
  bf4 bf r2 g4 a r2 d,4 g ef bf c a a d2 \fermata
  \bar "|."
  }

tenorAntiphonMusic =  \relative c' {
  \partial 4
  r4 r4 d4 e4 bf4 d4 r4 c2 df c4 (ef) d4. c8 bf2 \fermata
  \bar "|."
  }

bassAntiphonMusic =  \relative c' {
  \partial 4
  r4 r4 g4 g e fs r4 fs2 ef c4 (a) d4 d <g g,>2 \fermata
  \bar "|."
  }

antiphonLyrics = \lyricmode {
  Mon Dieu, mon Dieu, pour -- quoi m'as -- tu a -- ban -- don -- né&nbsp;?
  }

sopranoAntiphonLyrics = \antiphonLyrics
altoAntiphonLyrics = \antiphonLyrics
tenorAntiphonLyrics = \lyricmode {
  E -- loï, E -- loï, lam -- ma sa -- bach -- ta -- ni&nbsp;?
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
    \tempoVerseAcelerando s\breve s1 \tempoVerseRallentando s4 \bar "||" \caesura
    \tempoVerseAcelerando s\breve s1 \tempoVerseRallentando s4 \bar "||" \caesura
    \tempoVerseAcelerando s\breve s1 \tempoVerseRallentando s4 \bar "||" \caesura
    \tempoVerseAcelerando s\breve s1 \tempoVerseRallentando s4 \bar "||" \caesura
  }

altoVerseMusic = \relative c' {
    \caesura
    s\breve s1 s4 \caesura
    s\breve s1 s4 \caesura
    s\breve s1 s4 \caesura
    s\breve s1 s4 \caesura
  }

tenorVerseMusic = \relative c' {
    \caesura
    s\breve s1 s4 \caesura
    s\breve s1 s4 \caesura
    s\breve s1 s4 \caesura
    s\breve s1 s4 \caesura
  }

bassVerseMusic = \relative c {
    \caesura
    s\breve s1 s4 \caesura
    s\breve s1 s4 \caesura
    s\breve s1 s4 \caesura
    s\breve s1 s4 \caesura
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