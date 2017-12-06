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

title = "Psaume 117 (1)"
subtitle = ""
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

  Oui, que le d_i_se Israël:
  Étern_e_l est son amour! +
  Que le dise la mais_o_n d’Aaron:
  Étern_e_l est son amour! *
  Qu’ils le disent, ceux qui cr_a_ignent le Seigneur:
  Étern_e_l est son amour!

  Dans mon angoisse j'ai cri_é_ vers le Seigneur,
  et lui m'a exauc_é_, mis au large.
  Le Seigneur est pour m_o_i, je ne crains pas;
  que pourrait un h_o_mme contre moi?
  Le Seigneur est avec m_o_i pour me défendre,
  et moi, je braver_a_i mes ennemis.

  Mieux vaut s'appuy_e_r sur le Seigneur
  que de compt_e_r sur les hommes; *
  mieux vaut s'appuy_e_r sur le Seigneur
  que de compt_e_r sur les puissants!

  Toutes les nat_i_ons m'ont encerclé:
  au nom du Seign_e_ur, je les détruis!
  Elles m'ont cern_é_, encerclé:
  au nom du Seign_e_ur, je les détruis!
  Elles m'ont cerné, comme des guèpes: +
  ce n'ét_a_it qu'un feu de ronces *
  au nom du Seign_e_ur, je les détruis!

  On m’a poussé, bouscul_é_ pour m’abattre;
  mais le Seign_e_ur m’a défendu.
  Ma force et mon ch_a_nt, c’est le Seigneur;
  il est pour m_o_i le salut.

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
      \concat { "Dans mon angoisse j'ai " cri \underline é" "vers" "le" "Seigneur, }
      \concat { "et lui m'a " exauc \underline é," "mis" "au" "large. }
      \concat { "Le Seigneur est pour " m \underline o i," "je" "ne" "crains" "pas&nbsp;; }
      \concat { "que pourrait un " h \underline o mme" "contre" "moi&nbsp;? }
      \concat { "Le Seigneur est avec " m \underline oi" "pour" "me" "défendre, }
      \concat { "et moi, je " braver \underline a i" "mes" "ennemis. }
      " "
      \concat { "Mieux vaut " s'appuy \underline e r" "sur" "le" "Seigneur }
      \concat { "que de " compt \underline e r" "sur" "les hommes&nbsp;; \super * }
      \concat { "mieux vaut " s'appuy \underline e r" "sur" "le" "Seigneur }
      \concat { "que de " compt \underline e r" "sur" "les" "puissants&nbsp;! }
      " "
      \concat { "Toutes les " nat \underline i ons" "m'ont" "encerclé&nbsp;: }
      \concat { "au nom du " Seign \underline e ur," "je" "les" "détruis&nbsp;! }
      \concat { "Elles m'ont " cern \underline é," "encerclé&nbsp;: }
      \concat { "au nom du " Seign \underline e ur," "je" "les" "détruis! }
      \concat { "Elles m'ont cerné, comme des guèpes&nbsp;: " \super &plus; }
      \concat { "ce " n'ét \underline a it" "qu'un" "feu" "de ronces" " \super * }
      \concat { "au nom du " Seign \underline e ur," "je" "les" "détruis! }
      " "
      \concat { "On m’a poussé, " bouscul \underline é " "pour" "m’abattre; }
      \concat { "mais le " Seign \underline e ur" "m’a" "défendu. }
      \concat { "Ma force et mon " ch \underline a nt," "c’est" "le" "Seigneur; }
      \concat { "il est pour " m \underline o i" "le" "salut. }
    }
  }
}

groupedVersesLyrics = <<
>>

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%          Draw score          %%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\include "../libs/layouts/commonLayout.ily"
\include "../libs/layouts/psalmody.ily"
\include "../libs/layouts/outputMidi.ily"