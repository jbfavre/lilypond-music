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

staffCustomSize = 18

title = "Psaume 22"
subtitle = \markup { \column { "François-Régis Favre" "17 juin 1937 - &dagger; 20 octobre 2019" } }
composer = "Jean Baptiste Favre"
dedicace = "Clichy la Garenne, 22 octobre 2019"

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

global = {
  \time 2/4
  \key d \minor
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoAntiphonMusic = \relative c' {
   d8 e f4 (f8) f8 g g a2
   c4 d8 c b4 a8 g a2 \fermata
   \bar "|." \break
  }

altoAntiphonMusic = \relative c' {
   d8 cs d4 (d8) d e e f2 a4 a8 a g4 e8 e e2 \fermata
   \bar "|." \break
  }

tenorAntiphonMusic =  \relative c {
   f8 a a4 (bf8)[ bf] c c c2 e4 d8 d d4 d8 b cs2 \fermata
   \bar "|." \break
  }

bassAntiphonMusic =  \relative c {
   bf8 a d8 c (bf8) d c e f2 a4 f8 f g4 e8 e a,2 \fermata
   \bar "|." \break
  }

antiphonLyrics = \lyricmode {
    Le Sei -- gneur est mon ber -- ger_:
    rien ne sau -- rait me man -- quer.
  }

sopranoAntiphonLyrics = \antiphonLyrics
altoAntiphonLyrics = \antiphonLyrics
tenorAntiphonLyrics = \antiphonLyrics
bassAntiphonLyrics = \lyricmode {
    Le Sei -- gneur_ -- _ -- est mon ber -- ger_:
    rien ne sau -- rait me man -- quer.
  }


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%          Verses          %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% quand on a fini de rentrer la musique partout, on peut préciser
% (chez les Soprano uniquement!) les paramètres de tempo MIDI
% en utilisant \tAcce et \tRall

sopranoVerseMusic = \relative c' {
    \cadenzaOn \caesura
    \tempoVerseAcelerando g'\breve a1 \tempoVerseRallentando f4 \bar "||" \caesura
    \tempoVerseAcelerando f\breve e1 g4 \tempoVerseRallentando a4 \bar "||" \caesura
    \tempoVerseAcelerando a\breve c1 \tempoVerseRallentando d4 \bar "||" \caesura
    \tempoVerseAcelerando c\breve b1 \tempoVerseRallentando a4 g4 a4 \bar "|."
  }

altoVerseMusic = \relative c' {
    \caesura
    d\breve cs1 d4 \caesura
    d\breve c1 e4 c4 \caesura
    f\breve a1 f4 \caesura
    f\breve g1 e4 e4 e4
  }

tenorVerseMusic = \relative c' {
    \caesura
    bf\breve a1 a4 \caesura
    bf\breve g1 g4 c4 \caesura
    a\breve a1 bf4 \caesura
    a\breve d1 d4 b4 cs4
  }

bassVerseMusic = \relative c {
    \caesura
    g'\breve e1 d4 \caesura
    bf\breve c1 c4 f4 \caesura
    d\breve e1 f4 \caesura
    f\breve g1 e4 e4 a,4
  }

%{
  Le Seigne_u_r est mon berg_e_r,
  je ne m_a_nque de r_i_en,
  Sur des pr_é_s d’herbe fr_a_îche, 
  il me f_a_it reposer.

  Il me mène vers les  e_a_ux tranqu_i_lles
  et me f_a_it revivre;
  il me conduit par le j_u_ste chem_i_n
  pour l’honn_e_ur de son nom.

  Si je traverse les rav_i_ns de la m_o_rt,
  je ne cr_a_ins aucun m_a_l,
  car tu _e_s avec m_o_i :
  ton bâton me gu_i_de et me rassure.

  Tu prépares la t_a_ble pour m_o_i
  devant mes _e_nnemis;
  tu répands le parf_u_m sur ma t_ê_te,
  ma coupe _e_st débordante.

  Grâce et bonh_e_ur m’accomp_a_gnent
  tous les j_o_urs de ma v_i_e;
  j’habiterai la mais_o_n du Seign_e_ur
  pour la dur_é_e de mes jours.
%}

verseLyrics = \markuplist {
  \override #'(font-family . sans)
  \override #'(font-size . 2)
  \fill-line {
    \hspace #.1
    \column{
      \vspace #-1
      \concat { \fontsize #-3 \typewriter "1. " "Le " Seigne \underline u r " est mon berger," }
      \concat { "     je ne " m \underline a nque " de rien," }
      \concat { "     Sur des " pr \underline é s " d’herbe fraîche," }
      \concat { "     il me " f \underline a it " reposer." }
      \vspace #1
      \concat { \fontsize #-3 \typewriter "2. " "Il me mène vers les "  e \underline a ux " tranquilles" }
      \concat { "     et me " f \underline a it " revivre;" }
      \concat { "     il me conduit par le " j \underline u ste " chemin" }
      \concat { "     pour " l’honn \underline e ur " de son nom." }
      \vspace #1
      \concat { \fontsize #-3 \typewriter "3. " "Si je traverse les " rav \underline i ns " de la mort," }
      \concat { "     je ne " cr \underline a ins " aucun mal," }
      \concat { "     car tu " \underline e s " avec moi&nbsp;:" }
      \concat { "     ton bâton me " gu \underline i de " et me rassure." }
    }
    \hspace #1
    \column{
      \vspace #1
      \concat { \fontsize #-3 \typewriter "4. " "Tu prépares la " t \underline a ble " pour moi" }
      \concat { "     " dev \underline a nt " mes ennemis;" }
      \concat { "     tu répands le " parf \underline u m " sur ma tête," }
      \concat { "     ma " c \underline o upe " est débordante." }
      \vspace #1
      \concat { \fontsize #-3 \typewriter "5. " "Grâce et " bonh \underline e ur " m’accompagnent" }
      \concat { "     tous les " j \underline o urs " de ma vie;" }
      \concat { "     j’habiterai la " mais \underline o n " du Seigneur" }
      \concat { "     pour la " dur \underline é e " de mes jours." }
    }
    \hspace #1
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

sopranoVerseMusic = \relative c' {
    \cadenzaOn \caesura
    \tempoVerseAcelerando g'\breve a1 \tempoVerseRallentando f4 \bar "||" \caesura
    \tempoVerseAcelerando f\breve e1 g4 \tempoVerseRallentando a4 \bar "||" \caesura
    \tempoVerseAcelerando a\breve c1 \tempoVerseRallentando d4 \bar "||" \caesura
    \tempoVerseAcelerando c\breve b1 \tempoVerseRallentando a4 g4 a4 \bar "|."
  }
altoVerseMusic = {}
tenorVerseMusic = {}
bassVerseMusic = \relative c {
    \caesura
    bf\breve a1 d4 \caesura
    bf\breve c1 e4 f4 \caesura
    d\breve a1 bf4 \caesura
    a\breve d1 d4 b4 cs4
  }
% Load Piano settings & layout
\include "../libs/defaultPianoSettings.ly"
\include "../libs/layouts/commonPiano.ily"
% Load Psalmody layout
\include "../libs/layouts/commonLayout.ily"
\include "../libs/layouts/psalmody-2Voices.ily"
