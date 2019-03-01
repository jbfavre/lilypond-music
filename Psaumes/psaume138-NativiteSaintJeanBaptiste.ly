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

title = "Psaume 138"
subtitle = "Solennité de la nativité de saint Jean Baptiste"
composer = "Jean Baptiste Favre"
dedicace = "Clichy la Garenne, juin 2018"

staffCustomSize = 16
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
  \time 4/4
  \key f \major
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%% Antiphon %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoAntiphonMusic = \relative c' {
  r8 c8 f a g4 g4 r8 a4 g4 f4.
  r8 g8 a a c4 c8 bf a g4 f8 g4. (a8) a2
  \bar "|." \break
  }

altoAntiphonMusic = \relative c' {
  c4 c8 c bf4 bf r4 e4 e a,4
  r8 d d c bf4 d8 f d4 d e e f2
  }

tenorAntiphonMusic =  \relative c' {
  a4 a4 r8 bf8 e d cs4 cs4 d4. e8 f8
  f8 fs fs g4 g8 f f4 f8 d c4 (bf) c2
  }

bassAntiphonMusic =  \relative c {
  f4 f8 f e4 e a, a d2
  bf4 a g g8 a bf4 b c e f2
  }

antiphonLyrics = \lyricmode {
    Je te rends grâ -- ce, ô mon Dieu,
    Je te rends grâ -- ces, pour tant de mer -- veil -- les.
  }

sopranoAntiphonLyrics = \antiphonLyrics
altoAntiphonLyrics = \antiphonLyrics
tenorAntiphonLyrics =  \lyricmode {
    Grâ -- ce&nbsp;! Je te rends grâ -- ce, ô mon Dieu,
    Je te rends grâ -- ce pour tant de mer -- veil -- les.
  }
bassAntiphonLyrics =   \lyricmode {
    Je te rends grâ -- ce, ô mon Dieu,
    Grâ -- ce&nbsp;! Je te rends grâ -- ce, ô mon Dieu,
  }

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%          Verses          %%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

sopranoVerseMusic = \relative c' {
    \caesura \cadenzaOn 
    \tempoVerseAcelerando f\breve f1 \tempoVerseRallentando g4 \bar "||" \caesura
    \tempoVerseAcelerando g\breve a1 \tempoVerseRallentando g4 g f \bar "||"
    \tempoVerseAcelerando g\breve a1 \tempoVerseRallentando bf4 \bar "||" \caesura
    \tempoVerseAcelerando a\breve g1 \tempoVerseRallentando g4 \bar "||"
  }
altoVerseMusic = \relative c' {
    \caesura \cadenzaOn 
    \tempoVerseAcelerando c\breve c1 \tempoVerseRallentando d4 \bar "||" \caesura
    \tempoVerseAcelerando e\breve e1 \tempoVerseRallentando e4 d d \bar "||"
    \tempoVerseAcelerando d\breve fs1 \tempoVerseRallentando g4 \bar "||" \caesura
    \tempoVerseAcelerando f\breve f1 \tempoVerseRallentando e4 \bar "||"
  }

tenorVerseMusic = \relative c' {
    \caesura \cadenzaOn 
    \tempoVerseAcelerando a\breve a1 \tempoVerseRallentando bf4 \bar "||" \caesura
    \tempoVerseAcelerando a\breve cs1 \tempoVerseRallentando a4 a a \bar "||"
    \tempoVerseAcelerando bf\breve d1 \tempoVerseRallentando d4 \bar "||" \caesura
    \tempoVerseAcelerando d\breve d1 \tempoVerseRallentando c4 \bar "||"
  }

bassVerseMusic = \relative c {
    \caesura \cadenzaOn 
    \tempoVerseAcelerando f\breve f1 \tempoVerseRallentando e4 \bar "||" \caesura
    \tempoVerseAcelerando cs\breve a1 \tempoVerseRallentando cs!4 d d \bar "||"
    \tempoVerseAcelerando bf\breve a1 \tempoVerseRallentando g4 \bar "||" \caesura
    \tempoVerseAcelerando bf\breve b1 \tempoVerseRallentando c4 \bar "||"
   }

%{

  Tu me scrutes, Seigne_u_r, et tu sais !
  Tu sais quand je m’ass_o_is, quand je me lève ;
  de très loin, tu pén_è_tres mes pensées,
  tous mes chemins te s_o_nt familiers.
  
  C’est toi qui as cré_é_ mes reins,
  qui m’as tissé dans le s_e_in de ma mère.
  Je reconnais devant t_o_i le prodige,
  l’être étonn_a_nt que je suis.
  
  Étonn_a_ntes sont tes œuvres,
  toute mon _â_me le sait.
  Mes os n’étaient pas cach_é_s pour toi
  quand j’étais façonn_é_ dans le secret.

%}

verseLyrics = \markuplist {
  \vspace #1
  \override #'(font-name . "Latin Modern Sans")
  \override #'(font-size . 3)
  \fill-line {
    \left-column{
      \vspace #1
      \concat { "Tu me scrutes, Seigne" \underline u "r, et tu sais !"}
      \concat { "Tu sais quand je m’ass" \underline o "is, quand je me lève ;"}
      \concat { "de très loin, tu pén" \underline è "tres mes pensées,"}
      \concat { "tous mes chemins te s" \underline o "nt familiers."}
      \vspace #1
      \concat { "C’est toi qui as cré" \underline é " mes reins,"}
      \concat { "qui m’as tissé dans le s" \underline e "in de ma mère."}
      \concat { "Je reconnais devant t" \underline o "i le prodige,"}
      \concat { "l’être étonn" \underline a "nt que je suis."}
      \vspace #1
      \concat { "Étonn" \underline a "ntes sont tes œuvres,"}
      \concat { "toute mon " \underline â "me le sait."}
      \concat { "Mes os n’étaient pas cach" \underline é "s pour toi"}
      \concat { "quand j’étais façonn" \underline é " dans le secret."}
    }
  }
  \vspace #5
  \fill-line {
    \override #'(font-name . "Latin Modern Sans")
    \column { \concat { \underline "Consignes d'exécution" "&nbsp;: l'antienne sera chantée comme une mélopée, avec douceur et amour." } }
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