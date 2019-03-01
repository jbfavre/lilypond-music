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

title = "Psaume 97"
subtitle = "Nativité du Seigneur - Messe du jour"
composer = "Jean Baptiste Favre"
dedicace = "Saint Pierre Quiberon, 25 décembre 2018"

global = {
  \key a \major
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoAntiphonMusic = \relative c' {
  \time 6/8
  e8 e e a4 a8 b a b cs4. \breathe
  \time 3/4
  r4 cs4 a gs a2 \fermata
  \bar "|." \break
  }

altoAntiphonMusic = \relative c' {
  cs8 cs cs e4 e8 fs fs gs a4.
  r4 a4 d, d e2 \breathe
  }

tenorAntiphonMusic =  \relative c' {
  a8 a a cs4 cs8 b d d cs4.
  r4 d4 b b d4 (cs) \breathe
  }

bassAntiphonMusic =  \relative c' {
  a8 a gs fs4 cs8 d b e fs4.
  r4 fs8 (d) e4 <e e,> a,2 \breathe
  }

antiphonLyrics = \lyricmode {
   La ter -- r~en -- tière a vu
   le Sau -- veur que Dieu nous donne.
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
    \tempoVerseAcelerando fs\breve gs1 \tempoVerseRallentando a4 \bar "||" \caesura
    \tempoVerseAcelerando a\breve b1 \tempoVerseRallentando cs4 \bar "||" \caesura
    \tempoVerseAcelerando cs\breve \tempoVerseRallentando cs4 b4 \bar "||" \caesura
    \tempoVerseAcelerando b\breve fs1 \tempoVerseRallentando a4 gs4 \bar "||" \caesura
  }

altoVerseMusic = \relative c' {
  \caesura
  cs\breve e1 cs4 \bar "||" \caesura
  d\breve d1 cs4 \bar "||" \caesura
  e\breve d4 d4 \bar "||" \caesura
  fs\breve d1 d4 d4 \bar "||" \caesura
  }

tenorVerseMusic = \relative c' {
  \caesura
  a\breve gs1 a4 \bar "||" \caesura
  b\breve gs1 a4 \bar "||" \caesura
  as\breve b4 b4 \bar "||" \caesura
  b\breve a1 b4 b4 \bar "||" \caesura
  }

bassVerseMusic = \relative c {
  \caesura
  fs\breve cs1 fs4 \bar "||" \caesura
  fs\breve e1 e4 \bar "||" \caesura
  fs\breve fs4 fs4 \bar "||" \caesura
  ds\breve b1 e4 e4 \bar "||" \caesura
  }

%{

Le Seigneur est roi ! Ex_u_lte la terre !
Joie pour les _î_les sans nombre !
Les cieux ont proclam_é_ sa justice,
et tous les pe_u_ples ont vu sa gloire.

Une lumière est sem_é_e pour le juste,
et pour le cœur s_i_mple, une joie.
Que le Seigneur soit votre j_o_ie, hommes justes ;
rendez grâce en rappelant son n_o_m très saint.

%}

verseLyrics = \markup {
  \override #'(font-name . "Latin Modern Sans")
  \override #'(font-size . 3)
  \fill-line {
    \left-column{
      " "
      " "
      \concat { "Le Seigneur est roi&nbsp;! " Ex \underline u lte " la terre&nbsp;!" }
      \concat { "Joie pour les " \underline î les " sans nombre&nbsp;!" }
      \concat { "Les cieux ont " proclam \underline é " sa justice," }
      \concat { "et tous les " pe \underline u ples " ont vu sa gloire." }
      " "
      \concat { "Une lumière est " sem \underline é e " pour le juste," }
      \concat { "et pour le cœur " s \underline i mple, " une joie." }
      \concat { "Que le Seigneur soit votre " j \underline o ie, " hommes justes&nbsp;;" }
      \concat { "rendez grâce en rappelant son " n \underline o m " très saint." }
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