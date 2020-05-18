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

title = "Psaume 103"
subtitle = "Vigile Pascale, Clichy la Garenne, 2018"
composer = "Jean Baptiste Favre"
dedicace = "Clichy la Garenne, mars 2018"

staffCustomSize = 15
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
  \key d \minor
  \time 6/8
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoAntiphonMusic = \relative c' {
  \partial 8 d8 d8. f16 g8 a bf c d8. (c16 bf8) c4 f,8 bf a g f4 d8 f8 g4 a
             d,8  d8. f16 g8 a bf c d8. (c16 bf8) c4 f,8 bf a g f4 d8 f8 e4 d4.
  \bar "|." \break
  }
altoAntiphonMusic =  \relative c {}
tenorAntiphonMusic =  \relative c {}
bassAntiphonMusic =  \relative c {
  \partial 8 d8 d8. d16 d8 d d d bf4. f'4 f8 g g g d4 d8 d d4 a
             d8 d8. d16 d8 d d d bf4. f'4 f8 g g g d4 d8 a8 a4 d4.
  }

antiphonLyrics = \lyricmode {
    Bé -- nis le Sei -- gneur, ô mon â -- me, du fond de mon ê -- tre son saint Nom.
    Bé -- nis le Sei -- gneur, ô mon â -- me, et n'ou -- blie au -- cun de ses bien -- faits&nbsp;!
  }

sopranoAntiphonLyrics = \antiphonLyrics
altoAntiphonLyrics = \antiphonLyrics
tenorAntiphonLyrics = \antiphonLyrics
bassAntiphonLyrics = \antiphonLyrics

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%          Verses          %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoVerseMusic = \relative c'' {
  \silence \sopranoAntiphonMusic
    \cadenzaOn
     a\breve bf1  bf4 a \bar "||"
     g\breve a1  f4 e \bar "||" \break
     f\breve g1  g4 a \bar "||"
     f\breve f1  g4 f e d \bar "||"
  }
altoVerseMusic = \relative c {}
tenorVerseMusic = \relative c {}
bassVerseMusic = \relative c {
  \silence \sopranoAntiphonMusic
    \cadenzaOn
     d\breve f1  g4 a
     g\breve f1  d4 a \break
     bf\breve g1  c4 f
     bf,\breve a1  g4 bf a d
   }

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
  \override #'(font-family . sans)
  \override #'(font-size . 2)
  \fill-line {
    \hspace #0.0001
    \column{
      \vspace #1
      \concat { "Bénis le Seigne" \underline u "r, ô mon âme&nbsp;;"}
      \concat { "Seigneur mon Die" \underline u ", tu es si grand&nbsp;!"}
      \concat { "Revêt" \underline u " de magnificence,"}
      \concat { "tu as pour mantea" \underline u " la lumière&nbsp;!"}
      " "
      \concat { "Tu as donné son ass" \underline i "se à la terre&nbsp;:"}
      \concat { "qu’elle reste inébranl" \underline a "ble au cours des temps."}
      \concat { "Tu l’as vêtue de l’ab" \underline î "me des mers&nbsp;:"}
      \concat { "les eaux couvraient m" \underline ê "me les montagnes."}
      " "
      \concat { "Dans les ravins tu fais jaill" \underline i "r des sources"}
      \concat { "et l’eau chemine aux cre" \underline u "x des montagnes."}
      \concat { "les oiseaux séjo" \underline u "rnent près d’elle&nbsp;:"}
      \concat { "dans le feuillage on ent" \underline e "nd leurs cris."}
    }
    \hspace #0.0001
    \column {
      \vspace #1
      \concat { "De tes demeures tu abre" \underline u "ves les montagnes,"}
      \concat { "et la terre se rassasie du fr" \underline u "it de tes œuvres&nbsp;;"}
      \concat { "tu fais pousser les prair" \underline i "es pour les troupeaux,"}
      \concat { "et les champs pour l’h" \underline o "mme qui travaille."}
      " "
      \concat { "Quelle profusion dans tes œ" \underline u "vres, Seigneur&nbsp;!"}
      \concat { "Tout cela, ta sag" \underline e "sse l’a fait&nbsp;;"}
      \concat { "la terre s’empl" \underline i "t de tes biens."}
      \concat { "Bénis le Seigne" \underline u "r, ô mon âme&nbsp;!"}
    }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%          Draw score          %%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Load Piano settings & layout
\include "../libs/defaultPianoSettings.ily"
\include "../libs/layouts/commonSettings.ily"
staffCustomSize = 16.5

partition = {
  <<
    % Antienne à 4 voix mixtes
    \include "../libs/layouts/commonAntiphonFourVoices.ily"
    \include "../libs/layouts/commonPiano.ily"
    % Psalmodie à 4 voix mixtes
    \include "../libs/layouts/commonVerseFourVoices.ily"
    %\new FiguredBass { \figuredBass \verseFiguredBass }
    %\new FiguredBass { \harmony \verseHarmony }
  >>
}

% Load PDF output
\include "../libs/layouts/outputPDF.ily"
\verseLyrics