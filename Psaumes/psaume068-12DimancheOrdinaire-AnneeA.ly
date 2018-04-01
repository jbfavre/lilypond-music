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

title = "Psaume 68"
subtitle = "12e dimanche du Temps Ordinaire - Année A"
composer = "Jean Baptiste Favre"

global = {
  \omit Staff.TimeSignature
  \cadenzaOn
  \key d \minor
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoAntiphonMusic = \relative c' {
  d8 e f g a2 \breathe
  c4 b8 g a2 \fermata
  \bar "|." \break
  }

altoAntiphonMusic = \relative c' {
  }

tenorAntiphonMusic =  \relative c' {
  }

bassAntiphonMusic =  \relative c {
  d8 c f e a,2 \breathe
  a4 d8 b a2 \fermata
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

sopranoVerseMusic = \relative c' {
    \cadenzaOn \caesura
    \tempoVerseAcelerando f\breve g1 \tempoVerseRallentando b4 a2 \bar "||" \caesura
    \tempoVerseAcelerando c\breve b1 \tempoVerseRallentando g4 a2 \bar "||" \caesura
    \tempoVerseAcelerando a\breve f1 \tempoVerseRallentando g4 a b2 \bar "||" \caesura
    \tempoVerseAcelerando b\breve d1 \tempoVerseRallentando c2 \bar "||" \caesura
    \tempoVerseAcelerando c\breve c1 \tempoVerseRallentando b4 a b2 \bar "||" \caesura
    \tempoVerseAcelerando b\breve g1 \tempoVerseRallentando f4 a2 \bar "||" \caesura
  }

altoVerseMusic = \relative c' {
    \caesura
  }

tenorVerseMusic = 	\relative c' {
    \caesura
  }

bassVerseMusic = \relative c {
    \caesura
    d\breve c1 b4 a2 \caesura
    f\breve g1 e4 a2 \caesura
    d\breve b1 e4 a g2 \caesura
    e\breve f1 a2 \caesura
    f\breve a1 d,4 f g2 \caesura
    e,\breve f1 g4 a2 \caesura
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
      \concat { "« Vie et joie, à " v \underline o us " qui cher chez Dieu&nbsp;!&nbsp;»" }
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