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

title = "Psaume 102-4"
subtitle = "7e dimanche du Temps Ordinaire - Année C"
composer = "Jean Baptiste Favre"
dedicace = "Clichy la Garenne, février 2019"

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
  e8 e f4 g8 a bf (a) g g f2 \fermata
  \bar "|." \break
  }

altoAntiphonMusic = \relative c' {
  \partial 4
  e8 cs d4 e8 f f (f) f e c2 \fermata
  \bar "|."
  }

tenorAntiphonMusic =  \relative c' {
  \partial 4
  a8 a a4 d8 c d (d) bf bf a2 \fermata
  \bar "|."
  }

bassAntiphonMusic =  \relative c {
  \partial 4
  cs8 a d (c) bf a g (bf) c c f,2 \fermata
  \bar "|."
  }

antiphonLyrics = \lyricmode {
  Le Sei -- gneur est ten -- dresse et pi -- tié.
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
    \tempoVerseAcelerando a\breve bf1 \tempoVerseRallentando a4 \bar "||" \caesura
    \tempoVerseAcelerando f\breve f1 \tempoVerseRallentando g4 \bar "||" \caesura
    \tempoVerseAcelerando c\breve bf1 \tempoVerseRallentando a4 \bar "||" \caesura
    \tempoVerseAcelerando f\breve bf1 \tempoVerseRallentando a4 \bar "||" \caesura
  }

altoVerseMusic = \relative c' {
    \caesura
    c\breve e1 f4 \caesura
    d\breve d1 e4 \caesura
    a\breve g1 f4 \caesura
    d\breve e1 e4 \caesura
  }

tenorVerseMusic = \relative c' {
    \caesura
    a\breve d1 d4  \caesura
    bf\breve bf1 bf4 \caesura
    c\breve e1 d4  \caesura
    d\breve d1 cs4 \caesura
  }

bassVerseMusic = \relative c {
    \caesura
    f\breve g1 d4 \caesura
    bf\breve g1 c4 \caesura
    f\breve g1 d4 \caesura
    bf\breve g1 a4 \caesura
  }

%{

  Bénis le Seigne_u_r, ô mon âme,
  bénis son nom très s_a_int, tout mon être !
  Bénis le Seign_e_ur, ô mon âme,
  n’oublie auc_u_n de ses bienfaits !

  Car il pardonne to_u_tes tes offenses
  et te guérit de to_u_te maladie ;
  il réclame ta v_i_e à la tombe
  et te couronne d’amo_u_r et de tendresse.

  Le Seigneur est tendr_e_sse et pitié,
  lent à la col_è_re et plein d’amour ;
  il n’agit pas envers no_u_s selon nos fautes,
  ne nous rend pas sel_o_n nos offenses.
  
  Aussi loin qu’est l’ori_e_nt de l’occident,
  il met loin de no_u_s nos péchés ;
  comme la tendresse du p_è_re pour ses fils,
  la tendresse du Seigne_u_r pour qui le craint !

%}

verseLyrics = \markup {
  \override #'(font-family . sans)
  \override #'(font-size . 2)
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
      \concat { "Le Seigneur est " tendr \underline e sse " et pitié," }
      \concat { "lent à la " col \underline è re " et plein d’amour&nbsp;;" }
      \concat { "il n’agit pas envers " no \underline u s " selon nos fautes," }
      \concat { "ne nous rend pas " sel \underline o n " nos offenses." }
      " "
      \concat { "Aussi loin qu’est " l’ori \underline e nt " de l’occident," }
      \concat { "il met loin de " no \underline u s " nos péchés&nbsp;;" }
      \concat { "comme la tendresse du " p \underline è re " pour ses fils," }
      \concat { "la tendresse du " Seigne \underline u r " pour qui le craint&nbsp;!" }
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