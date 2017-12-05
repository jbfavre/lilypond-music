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
    \tempoVerseAcelerando g'\breve a1 \tempoVerseRallentando f2 \bar "||" \caesura
    \tempoVerseAcelerando f\breve g1 \tempoVerseRallentando a2 \bar "||" \caesura
    \tempoVerseAcelerando a\breve c1 \tempoVerseRallentando d2 \bar "||" \caesura
    \tempoVerseAcelerando c\breve b1 \tempoVerseRallentando a4 g4 a2 \bar "|."
  }

altoVerseMusic = \relative c' {
    \caesura
    d\breve cs1 a2 \caesura
    d\breve e1 f2 \caesura
    f\breve a1 f2 \caesura
    f\breve g1 e4 d4 cs2
  }

tenorVerseMusic = \relative c' {
    \caesura
    bf\breve g1 f2 \caesura
    a\breve g1 f2 \caesura
    a\breve c1 bf2 \caesura
    a\breve b1 g4 b4 cs2
  }

bassVerseMusic = \relative c {
    \caesura
    g'\breve e1 d2 \caesura
    bf\breve c1 c2 \caesura
    d\breve e1 f2 \caesura
    c\breve d1 b4 e4 e2
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

  Chantez au Seigne_u_r un chant nouveau,
  chantez au Seigne_u_r, terre entière,
  racontez à tous les pe_u_ples sa gloire,
  à toutes les nati_o_ns ses merveilles !

  Il est grand, le Seigne_u_r, hautement loué,
  redoutable au-dess_u_s de tous les dieux :
  néant, tous les die_u_x des nations !
  Lui, le Seigne_u_r, a fait les cieux.

  Rendez au Seigne_u_r, familles des peuples,
  rendez au Seigneur la glo_i_re et la puissance,
  rendez au Seigneur la glo_i_re de son nom.
  Apportez votre offr_a_nde, entrez dans ses parvis.

  Adorez le Seigne_u_r, éblouissant de sainteté :
  tremblez devant lu_i_, terre entière.
  Allez dire aux nations : « Le Seigne_u_r est roi ! »
  Il gouverne les pe_u_ples avec droiture.

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
%\include "../libs/layouts/dualPsalmody.ily"
\include "../libs/layouts/psalmody.ily"
\include "../libs/layouts/outputMidi.ily"