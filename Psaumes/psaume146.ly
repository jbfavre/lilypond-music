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

title = "Psaume 146"
subtitle = "5e dimanche du Temps Ordinaire (année B)"
composer = "Jean Baptiste Favre"

global = {
  \key d \major
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoAntiphonMusic = \relative c' {
   %\time 9/8 \partial 4. r8 d8 e
   %\time 3/4 fs4 g a
   %\time 9/8 a4. r8 g8 a
   %\time 3/4 b4 a g a2
   %\fermata \bar "|." \break
   \time 3/4 \partial 4 d8 e
   fs4 g a
   a4. r8 g8 e
   fs4 b8[ (a)] g4 fs2.
   \fermata \bar "|." \break
  }

altoAntiphonMusic = \relative c' {
  b8 cs8 d4 d fs cs4 a4 as4 b4 g a a2.
  }

tenorAntiphonMusic =  \relative c' {
  fs,8 g8 a4 g d' cs4 e e d d4 d8 (cs8) d2.
  }

bassAntiphonMusic =  \relative c {
  d8 e d4 b d e4 cs <cs fs> <b fs'>4 g'8 (fs) e4 d2.
  }

antiphonLyrics = \lyricmode {
    Bé -- nis -- sons le Sei -- gneur
    qui gué -- rit les bles -- sures.
  }

sopranoAntiphonLyrics = \antiphonLyrics
altoAntiphonLyrics = \antiphonLyrics
tenorAntiphonLyrics = \antiphonLyrics
bassAntiphonLyrics = \antiphonLyrics

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%          Verses          %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoVerseMusic = \relative c' {
    \cadenzaOn \hideNotes
    d1 \bar "||" \caesura
    d1 \bar "||" \caesura
    d1 \bar "||" \caesura
    d1
    %\tempoVerseAcelerando d\breve a'!1 \tempoVerseRallentando g4 af4 a2 \bar "||" \caesura
    \bar "|."
  }

altoVerseMusic = \relative c' {
  }

tenorVerseMusic = \relative c' {
  }

bassVerseMusic = \relative c {
    \hideNotes
    d1 \bar "||" \caesura
    d1 \bar "||" \caesura
    d1 \bar "||" \caesura
    d1
    %\tempoVerseAcelerando d\breve a'!1 \tempoVerseRallentando g4 af4 a2 \bar "||" \caesura
    \bar "|."
  }

groupedVersesLyrics = <<
  >>

figuredBass = \figuremode {
  }
harmony = \figuremode {
  }
%{
figuredBass = \figuremode {
    <5>4 <6 4> <5 7> <5 6> <5 _+>2
    <5>4 <5 6>4 <5>2 <5>4 <5> <5>2
  }
harmony = \figuremode {
    <I>4 <III> <I> <VI> <V>2
    <IV>4 <VI> <VII>2 <V>4 <IV> <I>2
  }
%}
verseFiguredBass = \figuremode {
  }
verseHarmony = \figuremode {
  }
%{
verseFiguredBass = \figuremode {
    <5>\breve <6 4>1 <6 5>4 <7> <5 _+>2
    <5>\breve <5>1 <5>4 <7> <5 _+>2
    <5>\breve <6 4>1 <6 5>4 <7> <5 6\+>2
    <7 _\+>\breve <5>1 <5>4 <5>4  <5>2
  }
verseHarmony = \figuremode {
    <I>\breve <III>1 <IV>4 <VI> <V>2
    <I>\breve <VII>1 <IV>4 <II> <III>2
    <I>\breve <III>1 <IV>4 <VI> <IV>2
    <V>\breve <I>1 <IV>4 <V> <I>2
  }
%}
\include "../libs/defaultPianoSettings.ly"
\include "../libs/layouts/commonPiano.ily"

%{

  Il est bon de fêt_e_r notre Dieu,
  il est beau de chant_e_r sa louange :
  il guér_i_t les cœurs brisés
  et s_o_igne leurs blessures.
  
  Il compte le n_o_mbre des étoiles,
  il d_o_nne à chacune un nom ;
  il est grand, il est f_o_rt, notre Maître :
  nul n’a mesur_é_ son intelligence.
  
  Le Seigneur él_è_ve les humbles
  et rabaisse jusqu’à t_e_rre les impies.
  Entonnez pour le Seigne_u_r l’action de grâce,
  jouez pour notre Die_u_ sur la cithare !

%}

verseLyrics = \markup {
  \override #'(font-name . "Latin Modern Sans")
  \override #'(font-size . 3)
  \fill-line {
    \left-column{
      " "
      " "
      \concat { "Il est bon de " fêt \underline e r " notre Dieu," }
      \concat { "il est beau de " chant \underline e r " sa louange&nbsp;:" }
      \concat { "il " guér \underline i t " les cœurs brisés" }
      \concat { "et " s \underline o igne " leurs blessures." }
      " "
      \concat { "Il compte le " n \underline o mbre " des étoiles," }
      \concat { "il " d \underline o nne " à chacune un nom&nbsp;;" }
      \concat { "il est grand, il est " f \underline o rt, " notre Maître&nbsp;:" }
      \concat { "nul n’a " mesur \underline é " son intelligence." }
      " "
      \concat { "Le Seigneur " él \underline è ve " les humbles" }
      \concat { "et rabaisse jusqu’à " t \underline e rre " les impies." }
      \concat { "Entonnez pour le " Seigne \underline u r " l’action de grâce," }
      \concat { "jouez pour notre " Die \underline u " sur la cithare&nbsp;!" }
    }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%          Draw score          %%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\include "../libs/layouts/commonLayout.ily"
\include "../libs/layouts/psalmody.ily"
\include "../libs/layouts/outputMidi.ily"


