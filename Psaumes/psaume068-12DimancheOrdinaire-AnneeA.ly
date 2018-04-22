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

staffCustomSize = 13
systemToSystemSpacing = 
  #'((basic-distance . 3)
     (minimum-distance . 3)
     (padding . 3)
     (stretchability . 3))
scoreMarkupSpacing =
  #'((padding . 3)
   (basic-distance . 3)
   (minimum-distance . 3)
   (stretchability . 3))

title = "Psaume 68"
subtitle = "12e dimanche du Temps Ordinaire - Année A"
composer = "Jean Baptiste Favre"
dedicace = "Clichy la Garenne, avril 2018"

global = {
  \omit Staff.TimeSignature
  \key d \minor
  \time 2/4
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoAntiphonMusic = \relative c' {
  d8 e f g a2 \breathe
  c4 b8 g a2 (a2) \fermata
  \bar "|." \break
  }

altoAntiphonMusic = \relative c' {
  d8 c c d cs2 \breathe
  f4 g8 e e2 (e2) \fermata
  }

tenorAntiphonMusic =  \relative c' {
  a8 a a e e2 \breathe
  a4 b8 (d) d4 (cs8 b) cs2 \fermata
  }

bassAntiphonMusic =  \relative c {
  f8 e d bf a2 \breathe
  f4 d'8 b a2 (a2) \fermata
  }

antiphonLyrics = \lyricmode {
  Dans ton grand a -- mour,
  Dieu, ré -- ponds -- moi. 
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
    \tempoVerseAcelerando g\breve a1 \tempoVerseRallentando g4 f \bar "||" \caesura
    \tempoVerseAcelerando f\breve f1 \tempoVerseRallentando g4 g a \bar "||" \caesura \break
    \tempoVerseAcelerando d\breve c1 \tempoVerseRallentando b4 \bar "||" \caesura
    \tempoVerseAcelerando b\breve c1 \tempoVerseRallentando a4 \bar "||" \caesura \break
    \tempoVerseAcelerando a\breve a1 \tempoVerseRallentando s4 g4 \bar "||" \caesura
    \tempoVerseAcelerando g\breve g1 \tempoVerseRallentando g4 a d, \bar "|." \caesura
  }

altoVerseMusic = \relative c' {
    \tempoVerseAcelerando d\breve e1 \tempoVerseRallentando e4 d \bar "||" \caesura
    \tempoVerseAcelerando d\breve d1 \tempoVerseRallentando e4 e e \bar "||" \caesura \break
    \tempoVerseAcelerando a,\breve c1 \tempoVerseRallentando d4 \bar "||" \caesura
    \tempoVerseAcelerando g\breve a1 \tempoVerseRallentando e4 \bar "||" \caesura \break
    \tempoVerseAcelerando f\breve f1 \tempoVerseRallentando s4 d4 \bar "||" \caesura
    \tempoVerseAcelerando e\breve e1 \tempoVerseRallentando e4 cs a \bar "|." \caesura
  }

tenorVerseMusic = \relative c' {
    \tempoVerseAcelerando bf\breve g1 \tempoVerseRallentando cs4 a \bar "||" \caesura
    \tempoVerseAcelerando bf\breve bf1 \tempoVerseRallentando <bf c>4 <bf d> <a cs> \bar "||" \caesura \break
    \tempoVerseAcelerando f\breve a1 \tempoVerseRallentando bf4 \bar "||" \caesura
    \tempoVerseAcelerando d\breve c1 \tempoVerseRallentando c4 \bar "||" \caesura \break
    \tempoVerseAcelerando d\breve d1 \tempoVerseRallentando s4 bf4 \bar "||" \caesura
    \tempoVerseAcelerando bf\breve a1 \tempoVerseRallentando cs4 g f \bar "|." \caesura
  }

bassVerseMusic = \relative c {
    \cadenzaOn \caesura
    \tempoVerseAcelerando d\breve cs1 \tempoVerseRallentando a4 d \bar "||" \caesura
    \tempoVerseAcelerando bf\breve g1 \tempoVerseRallentando bf4 c a \bar "||" \caesura \break
    \tempoVerseAcelerando d\breve e1 \tempoVerseRallentando g4 \bar "||" \caesura
    \tempoVerseAcelerando e\breve f1 \tempoVerseRallentando c4 \bar "||" \caesura \break
    \tempoVerseAcelerando a\breve bf1 \tempoVerseRallentando s4 g4 \bar "||" \caesura
    \tempoVerseAcelerando c\breve cs1 \tempoVerseRallentando a4 e' d \bar "|." \caesura
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

  C’est pour toi que j’end_u_re l’insulte,
  que la honte me co_u_vre le visage :
  je suis un étrang_e_r pour mes frères,
  un inconnu pour les f_i_ls de ma mère.
  L’amour de ta mais_o_n m’a perdu ;
  on t’insulte, et l’insulte ret_o_mbe sur moi.
  
  Et moi, je te pr_i_e, Seigneur :
  c’est l’he_u_re de ta grâce ;
  dans ton grand amour, Di_e_u, réponds-moi,
  par ta vérité s_a_uve-moi.
  Réponds-moi, Seign_e_ur, car il est bon, ton amour ;
  dans ta grande tendr_e_sse, regarde-moi.
  
  Les pauvres l’ont v_u_, ils sont en fête :
  « Vie et joie, à v_o_us qui cher chez Dieu ! »
  Car le Seigneur éc_o_ute les humbles,
  il n’oublie pas les s_i_ens emprisonnés.
  Que le ciel et la t_e_rre le célèbrent,
  les mers et t_o_ut leur peuplement !

%}

verseLyrics = \markup {
  \override #'(font-name . "Latin Modern Sans")
  \override #'(font-size . 3)
  \fill-line {
    \left-column{
      " "
      " "
      \concat { "C’est pour toi que " j’end \underline u re " l’insulte," }
      \concat { "que la honte me " co \underline u vre " le visage&nbsp;:" }
      \concat { "je suis un " étrang \underline e r " pour mes frères," }
      \concat { "un inconnu pour les " f \underline i ls " de ma mère." }
      \concat { "L’amour de ta " mais \underline o n " m’a perdu&nbsp;;" }
      \concat { "on t’insulte, et l’insulte " ret \underline o mbe " sur moi." }
      " "
      \concat { "Et moi, je te " pr \underline i e, " Seigneur&nbsp;:" }
      \concat { "c’est " l’he \underline u re " de ta grâce&nbsp;;" }
      \concat { "dans ton grand amour, " Di \underline e u, " réponds-moi," }
      \concat { "par ta vérité " s \underline a uve-moi. }
      \concat { "Réponds-moi, " Seign \underline e ur, " car il est bon, ton amour&nbsp;;" }
      \concat { "dans ta grande " tendr \underline e sse, " regarde-moi."}
      " "
      \concat { "Les pauvres l’ont " v \underline u, " ils sont en fête&nbsp;:" }
      \concat { "« Vie et joie, à " v \underline o us " qui cherchez Dieu&nbsp;!&nbsp;»" }
      \concat { "Car le Seigneur " éc \underline o ute " les humbles," }
      \concat { "il n’oublie pas les " s \underline i ens " emprisonnés." }
      \concat { "Que le ciel et la " t \underline e rre " le célèbrent," }
      \concat { "les mers et " t \underline o ut " leur peuplement&nbsp;!" }
    }
  }
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%          Draw score          %%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\include "../libs/layouts/commonLayout.ily"
\include "../libs/layouts/psalmody.ily"
\include "../libs/layouts/outputMidi.ily"