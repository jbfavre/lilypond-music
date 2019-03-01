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

title = "Psaume 96"
subtitle = "Nativité du Seigneur - Messe de l'Aurore"
composer = "Jean Baptiste Favre"
dedicace = "Saint Pierre Quiberon, 25 décembre 2018"

global = {
  \omit Staff.TimeSignature
  \key d \major
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoAntiphonMusic = \relative c' {
  d8 e fs4 g b a4.
  a8 b cs d b cs2 \breathe
  a8 a b4 b d d2 \fermata
  \bar "|." \break
  }

altoAntiphonMusic = \relative c' {
  a8 cs d4 b d cs4.
  fs8 d d g d e2 \breathe
  fs8 fs e4 e a fs2 \fermata
  }

tenorAntiphonMusic =  \relative c {
  fs8 a fs4 g g a4.
  a8 b b b e cs2 \breathe
  d8 d d4 d cs a2 \fermata
  }

bassAntiphonMusic =  \relative c {
  d8 a b4 d e fs4.
  d8 g fs e g a2 \breathe
  fs8 a g4 g8 (fs) e (a,) d2 \fermata
  }

antiphonLyrics = \lyricmode {
  La lu -- mière au -- jourd' -- hui a res -- plen -- di sur nous&nbsp;:
  un Sau -- veur nous est né !
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
    \tempoVerseAcelerando fs\breve fs1 fs1 \tempoVerseRallentando g4 e fs \bar "||" \caesura
    \tempoVerseAcelerando b\breve b1 \tempoVerseRallentando a4 g fs \bar "||" \caesura
    \tempoVerseAcelerando d'\breve cs1 \tempoVerseRallentando b4 \bar "||" \caesura
    \tempoVerseAcelerando b\breve g1 \tempoVerseRallentando a4 \bar "||" \caesura
  }

altoVerseMusic = \relative c' {
    \caesura
    d\breve d1 d d4 e d \bar "||" \caesura
    d\breve e1 e4 cs d \bar "||" \caesura
    fs\breve a1 d,4 \bar "||" \caesura
    g\breve d1 e4 \bar "||" \caesura
  }

tenorVerseMusic = \relative c' {
    \caesura
    a\breve a1 b a4 cs a \bar "||" \caesura
    b\breve cs1 a4 a a \bar "||" \caesura
    d\breve cs1 b4 \bar "||" \caesura
    d\breve b1 cs4 \bar "||" \caesura
  }

bassVerseMusic = \relative c {
    \caesura
    d\breve b1 g a4 a d \bar "||" \caesura
    g,\breve a1 a4 a d \bar "||" \caesura
    b\breve fs'1 g4 \bar "||" \caesura
    e\breve e1 a4 \bar "||" \caesura
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