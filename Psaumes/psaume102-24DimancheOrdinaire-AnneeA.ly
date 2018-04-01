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

title = "Psaume 102-5"
subtitle = "24e dimanche du Temps Ordinaire - Année A"
composer = "Jean Baptiste Favre"

global = {
  \key f \major
  \time 2/4
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

sopranoAntiphonMusic = \relative c' {
  \partial 4
  f8 g a4 g8 a c4 bf8 a g2 \breathe
  a8 a g a f d f g a2 \fermata
  \bar "|."
  }

altoAntiphonMusic = \relative c' {
  \partial 4
  c8 c d4 bf8 c8 d4 d8 c e2 \breathe
  e8 e cs e d a d e c2 \fermata
  \bar "|."
  }

tenorAntiphonMusic =  \relative c' {
  \partial 4
  a8 g f4 f8 e8 f4 g8 a8 g2 \breathe
  g8 g a g a f bf bf a2 \fermata
  \bar "|."
  }

bassAntiphonMusic =  \relative c {
  \partial 4
  f8 e d4 d8 c bf4 d8 f c2 \breathe
  cs8 cs a cs d c bf c f2 \fermata
  \bar "|."
  }

antiphonLyrics = \lyricmode {
  Le Sei -- gneur est ten -- dresse et pi -- tié,
  lent à la co -- lère et plein d’a -- mour.
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
    \cadenzaOn \caesura
    \tempoVerseAcelerando a\breve \tempoVerseRallentando c4 \bar "||" \caesura
    \tempoVerseAcelerando b\breve g1 \tempoVerseRallentando a4 \bar "||" \caesura
    \tempoVerseAcelerando a\breve g1 \tempoVerseRallentando a4 f4 \bar "||" \caesura
    \tempoVerseAcelerando c'\breve bf1 \tempoVerseRallentando g4 a4 \bar "|."
  }

altoVerseMusic = \relative c' {
    \caesura
    f\breve e4 \caesura
    g\breve e1 e4 \caesura
    e\breve e1 e4 d4 \caesura
    f\breve g1 d4 e4
  }

tenorVerseMusic = \relative c' {
    \caesura
    d\breve c4 \caesura
    d\breve b1 c4 \caesura
    cs\breve cs1 cs4 a4 \caesura
    d\breve e1 bf4 cs4
  }

bassVerseMusic = \relative c {
    \caesura
    f,\breve a4 \caesura
    g\breve b1 c4 \caesura
    cs\breve a1 cs4 d4 \caesura
    bf\breve c1 e4 a,4
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

  Bénis le Seigneur, ô mon _â_me,
  bénis son nom très s_a_int, tout mon être !
  Bénis le Seign_e_ur, ô mon âme,
  n’oublie auc_u_n de ses bienfaits !

  Car il pardonne toutes tes off_e_nses
  et te guérit de t_o_ute maladie ;
  il réclame ta v_i_e à la tombe
  et te couronne d’am_o_ur et de tendresse.

  Il n’est pas pour toujours en pr_o_cès,
  ne maintient pas sans f_i_n ses reproches;
  il n’agit pas envers n_o_us selon nos fautes,
  ne nous rend pas sel_o_n nos offenses.

  Comme le ciel domine la t_e_rre,
  fort est son am_o_ur pour qui le craint ;
  aussi loin qu’est l'or_i_ent de l’occident,
  il met loin de n_o_us nos péchés.

%}

verseLyrics = \markup {
  \override #'(font-name . "Latin Modern Sans")
  \override #'(font-size . 3)
  \fill-line {
    \left-column{
      " "
      " "
      \concat { "Bénis le " Seigne \underline u r, " ô mon âme," }
      \concat { "bénis son nom très " s \underline a int, " tout mon être&nbsp;!" }
      \concat { "Bénis le " Seign \underline e ur, " ô mon âme," }
      \concat { "n’oublie " auc \underline u n " de ses bienfaits&nbsp;!" }
      " "
      \concat { "Car il pardonne " to \underline u tes " tes offenses" }
      \concat { "et te guérit de " t \underline o ute " maladie;" }
      \concat { "il réclame ta " v \underline i e " à la tombe" }
      \concat { "et te couronne " d’am \underline o ur " et de tendresse." }
      " "
      \concat { "Il n’est pas pour " toujo \underline u rs " en procès," }
      \concat { "ne maintient pas sans " f \underline i n " ses reproches;" }
      \concat { "il n’agit pas envers " n \underline o us " selon nos fautes," }
      \concat { "ne nous rend pas " sel \underline o n " nos offenses." }
      " "
      \concat { "Comme le ciel " dom \underline i ne " la terre," }
      \concat { "fort est son " am \underline o ur " pour qui le craint;" }
      \concat { "aussi loin qu’est " l'or \underline i ent " de l’occident," }
      \concat { "il met loin de " n \underline o us " nos péchés." }
    }
  }
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%          Draw score          %%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\include "../libs/layouts/commonLayout.ily"
\include "../libs/layouts/psalmody.ily"
\include "../libs/layouts/outputMidi.ily"