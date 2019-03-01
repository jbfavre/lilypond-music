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
% Ajust this setting to get a single page psalm
staffCustomSize = 18
tempoAntiphon = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}
tempoVerseRallentando = {
  \set Score.tempoHideNote = ##t
  \tempo 4=120
}
tempoVerseAcelerando = {
  \set Score.tempoHideNote = ##t
  \tempo 2=120
}

title = "Psaume 117-2"
subtitle = "Deuxième dimanche de Pâques - Année A"
composer = "Jean Baptiste Favre"

global = {
  \omit Staff.TimeSignature
  \cadenzaOn
  \key c \major
}
% Ajust this setting to get a single page psalm
staffSize = 17

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoAntiphonMusic = \relative c' {
  d4 e f2 e4 f g2 b4 b a2 \breathe
  a4 g c b a g a2 \fermata
  \bar "|." \break
  }

altoAntiphonMusic = \relative c' {
  }

tenorAntiphonMusic =  \relative c' {
  }

bassAntiphonMusic =  \relative c {
  }

antiphonLyrics = \lyricmode {
  Ren -- dez grâ -- ce~au Sei -- gneur&nbsp;: Il est bon&nbsp;!
  É -- ter -- nel est son a -- mour&nbsp;!
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

sopranoVerseMusic = \relative c'' {
    \caesura
    \tempoVerseAcelerando a\breve c1 \tempoVerseRallentando b2 \bar "||" \caesura
    \tempoVerseAcelerando g\breve f1 \tempoVerseRallentando a2 \bar "||"  
  }

altoVerseMusic = \relative c' {
  }

tenorVerseMusic = \relative c' {
  }

bassVerseMusic = \relative c {
  }

%{

  Oui, que le d_i_se Israël:
  Étern_e_l est son amour! +
  Que le dise la mais_o_n d’Aaron:
  Étern_e_l est son amour! *
  Qu’ils le disent, ceux qui cr_a_ignent le Seigneur:
  Étern_e_l est son amour!

  On m’a poussé, bouscul_é_ pour m’abattre;
  mais le Seign_e_ur m’a défendu.
  Ma force et mon ch_a_nt, c’est le Seigneur;
  il est pour m_o_i le salut.
  Clameurs de joie et de victoire
  sous les tentes des justes.

  La pierre qu’ont rejet_é_e les bâtisseurs
  est devenue la p_i_erre d’angle ;
  c’est là l’œ_u_vre du Seigneur,
  la merv_e_ille devant nos yeux.
  Voici le j_o_ur que fit le Seigneur,
  qu’il soit pour nous jour de f_ê_te et de joie !

%}

verseLyrics = \markup {
  \override #'(font-name . "Latin Modern Sans")
  \override #'(font-size . 3)
  \fill-line {
    \left-column{
      " "
      " "
      \concat { "Oui, que le " d \underline i se" "Israël&nbsp;: }
      \concat { Étern \underline e l" "est" "son" "amour&nbsp;!" " \super &plus; }
      \concat { "Que le dise la " mais \underline on" "d’Aaron&nbsp;: }
      \concat { Étern \underline e l" "est" "son" "amour&nbsp;!" " \super * }
      \concat { "Qu’ils le disent, ceux qui " cr \underline a ignent" "le" "Seigneur&nbsp;: }
      \concat { Étern \underline e l" "est" "son" "amour&nbsp;! }
      " "
      \concat { "On m’a poussé, " bouscul \underline é " "pour" "m’abattre; }
      \concat { "mais le " Seign \underline e ur" "m’a" "défendu. }
      \concat { "Ma force et mon " ch \underline a nt," "c’est" "le" "Seigneur; }
      \concat { "il est pour " m \underline o i" "le" "salut. }
      \concat { "Clameurs de j" \underline o "ie et de victoire" }
      \concat { "sous les t" \underline e "ntes des justes." }
      " "
      \concat { "La pierre qu’ont rejet" \underline é "e les bâtisseurs" }
      \concat { "est devenue la p" \underline i "erre d’angle&nbsp;;" }
      \concat { "c’est là l’œ" \underline u "vre du Seigneur," }
      \concat { "la merv" \underline e "ille devant nos yeux." }
      \concat { "Voici le j" \underline o "ur que fit le Seigneur," }
      \concat { "qu’il soit pour nous jour de f" \underline ê "te et de joieanbsp;!" }

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