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

title = "Psaume 22"
subtitle = "4e dimanche de Carême - Lætare (année A)"
composer = "Jean Baptiste Favre"

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
    d8 cs a4 (a8) d e e f2
    a4 a8 f8 d4 d8 d cs2
  }

tenorAntiphonMusic =  \relative c' {
    g8 g f4 (f8) f8 g8 c c2
    c4 c8 a g4 g8 b cs2
  }

bassAntiphonMusic =  \relative c {
    bf8 a d4 (d8) bf8 c e f2
    e4 f8 c e4 b8 e8 e2
  }

antiphonLyrics = \lyricmode {
    Le Sei -- gneur est mon ber -- ger_:
    rien ne sau -- rait me man -- quer.
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
    \tempoVerseAcelerando g'\breve a1 \tempoVerseRallentando f4 \bar "||" \caesura
    \tempoVerseAcelerando f\breve g1 \tempoVerseRallentando a4 \bar "||" \caesura
    \tempoVerseAcelerando a\breve c1 \tempoVerseRallentando d4 \bar "||" \caesura
    \tempoVerseAcelerando c\breve b1 \tempoVerseRallentando a4 g4 a4 \bar "|."
  }

altoVerseMusic = \relative c' {
    \caesura
    d\breve cs1 a4 \caesura
    d\breve e1 f4 \caesura
    f\breve a1 f4 \caesura
    f\breve g1 e4 d4 cs4
  }

tenorVerseMusic = \relative c' {
    \caesura
    bf\breve g1 f4 \caesura
    a\breve g1 f4 \caesura
    a\breve c1 bf4 \caesura
    a\breve b1 g4 b4 cs4
  }

bassVerseMusic = \relative c {
    \caesura
    g'\breve e1 d4 \caesura
    bf\breve c1 c4 \caesura
    d\breve e1 f4 \caesura
    c\breve d1 b4 e4 e4
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

  Le Seigneur est m_o_n berg_e_r,
  je ne m_a_nque de r_i_en,
  Sur des pr_é_s d’herbe fr_a_îche, 
  il me f_a_it reposer.

  Il me mène vers les  e_a_ux tranqu_i_lles
  et me f_a_it revivre;
  il me conduit par le juste chem_i_n
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

verseLyrics = \markup {
  \override #'(font-name . "Latin Modern Sans")
  \override #'(font-size . 3)
  \fill-line {
    \left-column{
      " "
      \concat { "Le Seigneur est " m \underline o n" "berg \underline e r,}
      \concat { "je ne " m \underline a nque" "de" "r \underline i en,}
      \concat { "Sur des " pr \underline é s" "d’herbe" "fr \underline a îche, }
      \concat { "il me " f \underline a it" "reposer.}
      " "
      \concat { "Il me mène vers les "  e \underline a ux" "tranqu \underline i lles }
      \concat { "et me " f \underline a it" "revivre;}
      \concat { "il me conduit par le juste " chem \underline i n}
      \concat { "pour " l’honn \underline e ur" "de" "son" "nom.}
      " "
      \concat { "Si je traverse les " rav \underline i ns" "de" "la" "m \underline o rt,}
      \concat { "je ne " cr \underline a ins" "aucun" "m \underline a l,}
      \concat { "car tu " \underline e s" "avec" "m \underline o i&nbsp;:}
      \concat { "ton bâton me " gu \underline i de" "et" "me" "rassure.}
      " "
      \concat { "Tu prépares la " t \underline a ble" "pour" "m \underline o i}
      \concat { "devant mes " \underline e nnemis;}
      \concat { "tu répands le " parf \underline u m" "sur" "ma" "t \underline ê te,}
      \concat { "ma " coupe" "\underline e st" "débordante.}
      " "
      \concat { "Grâce et " bonh \underline e ur" "m’accomp \underline a gnent}
      \concat { "tous les " j \underline o urs" "de" "ma" "v \underline i e;}
      \concat { "j’habiterai la " mais \underline o n" "du" "Seign \underline e ur}
      \concat { "pour la " dur \underline é e" "de" "mes" "jours.}
    }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%          Draw score          %%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\include "../libs/layouts/commonLayout.ily"
\include "../libs/layouts/psalmody.ily"
\include "../libs/layouts/outputMidi.ily"