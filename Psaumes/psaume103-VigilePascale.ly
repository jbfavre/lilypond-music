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

title = "Psaume 103"
subtitle = "Vigile Pascale"
composer = "Jean Baptiste Favre"
dedicace = "Clichy la Garenne, janvier 2018"

executionNotes = "Il importe d'enchaîner sans traîner entre versets et répons"

staffCustomSize = 14
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
global = {
  \omit Staff.TimeSignature
  \cadenzaOn
  \key gs \minor
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoAntiphonMusic = \relative c' {
  e8[ ds] gs4 gs8[ (as)] b4 cs8[ b] as2 (as8) fss gs[ as] b4 as8[ b] gs[ gs] as[ gs] gs4 (fss!) gs2
  \bar "|." \break
  }

altoAntiphonMusic = \relative c' {
  cs8[ as] ds4 ds4 e gs8[ gs] fs2 fss4 gs8[ gs] fs4 cs8[ ds] e[ e] e[ cs] ds4. (e8) ds2
  }

tenorAntiphonMusic =  \relative c' {
  gs8[ fss] gs4 b8[ (as)] b4 cs8[ cs] cs2 ds4 e8[ e] ds4 gs,8[ gs] b[ cs] cs[ as] as2 b2
  }

bassAntiphonMusic =  \relative c {
  cs8[ cs] b4 gs'8[ (fs)] e4 cs8[ e] fs4 (e)
  ds cs8[ cs] ds4 e8[ ds] cs[ as] cs[ e] ds4. (cs8) gs2
  }

antiphonLyrics = \lyricmode {
    Ô Sei -- gneur, en -- voie ton Es -- prit
    qui re -- nou -- vel -- le la fa -- ce de la ter -- re!
  }

sopranoAntiphonLyrics = \antiphonLyrics
altoAntiphonLyrics = \antiphonLyrics
tenorAntiphonLyrics = \antiphonLyrics
bassAntiphonLyrics = \antiphonLyrics

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%          Verses          %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoVerseMusic = \relative c'' {
    \caesura \cadenzaOn 
    \tempoVerseAcelerando b\breve^\markup{ \sans "Psalmiste"} gs1 \tempoVerseRallentando as4 \bar "||" \caesura
    \tempoVerseAcelerando as\breve as1 \tempoVerseRallentando gs4 \bar "||"
    \cadenzaOff gs8^\markup{ \sans "Assemblée"}[ as] b4 as gs \bar "||" \break % Répons de l'assemblée
    \cadenzaOn
    \tempoVerseAcelerando gs\breve^\markup{ \sans "Psalmiste"} e1 \tempoVerseRallentando gs4 \bar "||" \caesura
    \tempoVerseAcelerando gs\breve fss!1 \tempoVerseRallentando gs4 \bar "||"
    \cadenzaOff gs8^\markup{ \sans "Assemblée"}[ as] b4 as gs \bar "|." % Répons de l'assemblée
  }
sopranoVerseRepons = \lyricmode {
    _ _ _ _ _ _
    \once \override LyricText.self-alignment-X = #RIGHT
    \markup {\concat { \bold ℟ &nbsp;:&nbsp;En }} -- voie ton Es -- prit&nbsp;!
  }
altoVerseMusic = \relative c' {
    \caesura \cadenzaOn 
    \tempoVerseAcelerando ds\breve e1 \tempoVerseRallentando e4\caesura
    \tempoVerseAcelerando e\breve ds1 \tempoVerseRallentando e4
    \cadenzaOff e8 e fs4 fs e  % Répons de l'assemblée
    \cadenzaOn
    \tempoVerseAcelerando b\breve as1 \tempoVerseRallentando ds4\caesura
    \tempoVerseAcelerando e\breve ds1 \tempoVerseRallentando ds4
    \cadenzaOff ds8 e fs4 fs8 e ds4 % Répons de l'assemblée
  }

tenorVerseMusic = \relative c' {
    \caesura \cadenzaOn 
    \tempoVerseAcelerando b\breve b1 \tempoVerseRallentando cs4\caesura
    \tempoVerseAcelerando cs\breve cs1 \tempoVerseRallentando b4
    \cadenzaOff b8 cs ds4 ds4 b4 % Répons de l'assemblée
    \cadenzaOn
    \tempoVerseAcelerando gs\breve gs1 \tempoVerseRallentando b4\caesura
    \tempoVerseAcelerando b\breve as1 \tempoVerseRallentando b4
    \cadenzaOff b8 cs ds4 ds8 cs b4 % Répons de l'assemblée
  }

bassVerseMusic = \relative c' {
    \caesura \cadenzaOn 
    \tempoVerseAcelerando gs\breve e1 \tempoVerseRallentando gs4\caesura
    \tempoVerseAcelerando fs\breve fss1 \tempoVerseRallentando gs4
    \cadenzaOff e8[ cs] b[ cs] ds4 e % Répons de l'assemblée
    \cadenzaOn
    \tempoVerseAcelerando e\breve cs1 \tempoVerseRallentando gs4\caesura
    \tempoVerseAcelerando cs\breve ds1 \tempoVerseRallentando gs,4
    \cadenzaOff gs'8[ fs] b,[ cs] ds4 gs, % Répons de l'assemblée
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

  Bénis le Seigne_u_r, ô mon âme ;
  Seigneur mon Die_u_, tu es si grand !
  Revêt_u_ de magnificence,
  tu as pour mantea_u_ la lumière !

  Tu as donné son ass_i_se à la terre :
  qu’elle reste inébranl_a_ble au cours des temps.
  Tu l’as vêtue de l’ab_î_me des mers :
  les eaux couvraient m_ê_me les montagnes.

  Dans les ravins tu fais jaill_i_r des sources
  et l’eau chemine aux cre_u_x des montagnes.
  les oiseaux séjo_u_rnent près d’elle :
  dans le feuillage on ent_e_nd leurs cris.

  De tes demeures tu abre_u_ves les montagnes,
  et la terre se rassasie du fr_u_it de tes œuvres ;
  tu fais pousser les prair_i_es pour les troupeaux,
  et les champs pour l’h_o_mme qui travaille.

  Quelle profusion dans tes œ_u_vres, Seigneur !
  Tout cela, ta sag_e_sse l’a fait ;
  la terre s’empl_i_t de tes biens.
  Bénis le Seigne_u_r, ô mon âme !

%}

verseLyrics = \markuplist {
  \vspace #1
  \override #'(font-name . "Latin Modern Sans")
  \override #'(font-size . 3)
  \fill-line {
    \hspace #1
    \column{
      \concat { \fontsize #-3 \typewriter "1. " "Bénis le Seigne" \underline u "r, ô mon âme&nbsp;;"}
      \concat { "   Seigneur mon Die" \underline u ", tu es si grand&nbsp;!"}
      \concat { "   Revêt" \underline u " de magnificence,"}
      \concat { "   tu as pour mantea" \underline u " la lumière&nbsp;!"}
      \vspace #1
      \concat { \fontsize #-3 \typewriter "2. " "Tu as donné son ass" \underline i "se à la terre&nbsp;:"}
      \concat { "   qu’elle reste inébranl" \underline a "ble au cours des temps."}
      \concat { "   Tu l’as vêtue de l’ab" \underline î "me des mers&nbsp;:"}
      \concat { "   les eaux couvraient m" \underline ê "me les montagnes."}
      \vspace #1
      \concat { \fontsize #-3 \typewriter "3. " "Dans les ravins tu fais jaill" \underline i "r des sources"}
      \concat { "   et l’eau chemine aux cre" \underline u "x des montagnes."}
      \concat { "   les oiseaux séjo" \underline u "rnent près d’elle&nbsp;:"}
      \concat { "   dans le feuillage on ent" \underline e "nd leurs cris."}
    }
    \hspace #1
    \column {
      \concat { \fontsize #-3 \typewriter "4. " "De tes demeures tu abre" \underline u "ves les montagnes,"}
      \concat { "   et la terre se rassasie du fr" \underline u "it de tes œuvres&nbsp;;"}
      \concat { "   tu fais pousser les prair" \underline i "es pour les troupeaux,"}
      \concat { "   et les champs pour l’h" \underline o "mme qui travaille."}
      \vspace #1
      \concat { \fontsize #-3 \typewriter "5. " "Quelle profusion dans tes œ" \underline u "vres, Seigneur&nbsp;!"}
      \concat { "   Tout cela, ta sag" \underline e "sse l’a fait&nbsp;;"}
      \concat { "   la terre s’empl" \underline i "t de tes biens."}
      \concat { "   Bénis le Seigne" \underline u "r, ô mon âme&nbsp;!"}
    }
    \hspace #1
  }
  \vspace #5
  \fill-line {
    \override #'(font-name . "Latin Modern Sans")
    \column { \concat { \underline "Consignes d'exécution" "&nbsp;:" } }
    \override #'(font-name . "Latin Modern Sans")
    \column {
      \line { "L'antienne n'est chantée qu'en début et en fin du psaume." }
      \line {
        \concat {
          "À chaque fin de verset, l'assemblée répond au psalmiste avec: "
          \bold "\"Envoie ton Esprit !\", "
          "en lieu et place de l'antienne"
        }
      }
      \line  { "On veillera à enchaîner répons et versets sans traîner, mais sans précipitation pour autant" }
    }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%          Draw score          %%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\include "../libs/layouts/commonLayout.ily"
\include "../libs/layouts/psalmody.ily"
\include "../libs/layouts/outputMidi.ily"
