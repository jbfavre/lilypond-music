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
%{
  Since defined in libs/translations/fr.ly
  Following variables must be overrided after file include
%}
sopranoVoiceTitle = "F."
bassVoiceTitle = "H."
antiphonText = "Intonation"
verseText = "Couplets"

\include "../libs/psalmody.ily"

%{
  Composition details
%}
title = "Impropères"
real_poet = ""
subtitle = "Vendredi saint - Chant des reproches"
composer = "Jean Baptiste Favre"


staffCustomSize = 16

global = {
    \key f \major
  }

SoloBass = \relative c {
  \cadenzaOn
  a'4. a8 a4 a8 a bf4 bf a2 \bar "|"
  a4 a a8[ a] g[ f] g1 \bar "|"
  a8[ (g)] f4 f2 \bar "|"
  }
sopranoAntiphonMusic = \relative c' {
  \silence \SoloBass
  f4 g a2 f4 g a2 f8[ f g g] a4 bf8[ a] g4 g f2 \bar "||" \break
}
altoAntiphonMusic = \relative c' {
  \silence \SoloBass
  c4 e c2 d4 e f2 d8[ d e e] e4 f8[ f] f4 f8[ (e)] c2 \bar "||" \break
  }
tenorAntiphonMusic =  \relative c' {
  \silence \SoloBass
  a4 g a2 a4 c c2 a8[ a c c] cs4 df8[ df!] d4 bf a2 \bar "||" \break
  }
bassAntiphonMusic =  \relative c {
  \SoloBass
  f4 c f2 d4 c f2 f8[ d c bf] a4 g8[ bf] b[ (d)] c4 <f f,>2 \bar "||" \break
}

sopranoVerseMusic = \relative c' {
  \cadenzaOn
  \tempoVerseAcelerando f\breve g1 \tempoVerseRallentando a4 \bar "|"
  \tempoVerseAcelerando f\breve g1 \tempoVerseRallentando g4 g a \bar "|" \break
  \tempoVerseAcelerando bf\breve bf1 \tempoVerseRallentando a4 g g \bar "|"
  }
altoVerseMusic= \relative c' {
  \cadenzaOn
  c\breve e1 d4
  d\breve e1 e4 e e
  g\breve f1 f4 f f8[ e]
  }
tenorVerseMusic= \relative c' {
  \cadenzaOn
  a\breve g1 f4
  a\breve c1 c4 c cs
  df\breve df!1 df!4 d bf
  }
bassVerseMusic = \relative c {
  \cadenzaOn
  f\breve c1 d4
  d\breve c1 c4 bf a
  bf\breve g1 bf4 b8[ d] c4
  }

sopranoAntiphonLyrics = \lyricmode {
  Ô Dieu saint, Ô Dieu fort, Ô Dieu im -- mor -- tel, prends pi -- tié de nous.
  }
altoAntiphonLyrics = \lyricmode {
  }
tenorAntiphonLyrics = \lyricmode {
  }
bassAntiphonLyrics = \lyricmode {
  Ô mon peu ple, Que t'ai -- je fais&nbsp;?
  En quoi t'ai- -- je con -- tris -- té&nbsp;?
  Ré -- ponds moi.
  Ô Dieu saint, Ô Dieu fort, Ô Dieu im -- mor -- tel, prends pi -- tié de nous.
  }

\include "../libs/defaultPianoSettings.ily"
\include "../libs/layouts/commonPiano.ily"

%{
  Moi je t’ai fait sortir d’Égypte, j’ai englouti le Pharaon&nbsp;:
  Toi, tu m’as livré aux grands prêtres !
  
  Pour toi je m’avançai dans la colonne de nuée&nbsp;:
  Toi tu m’as conduit à Pilate&nbsp;!
  
  Moi, dans ta main j’ai mis un sceptre, je t’ai promu peuple royal&nbsp;:
  Toi, tu as placé sur ma tête la couronne d’épines&nbsp;!
  
  Moi, je t’ai par ma toute puissance exalté&nbsp;:
  Toi, tu m’as pendu au gibet de la Croix&nbsp;!
%}

verseLyrics = \markuplist {
  \override #'(font-name . "Latin Modern Sans")
  \override #'(font-size . 3)
  \fill-line {
    \column{
      \concat { "Moi je t’ai fait sort" \underline i "r d’Égypte, j’ai englout" \underline i " le Pharaon&nbsp;:" }
      \concat { "Toi, tu m’as livr" \underline é " aux grands prêtres&nbsp;!" }
      " "
      \concat { "Pour t" \underline oi " je m’avanç" \underline ai " dans la col" \underline o "nne de nuée&nbsp;:" }
      \concat { "Toi tu m’as condu" \underline i "t à Pilate&nbsp;!" }
      " "
      \concat { "Moi, dans ta main j’ai m" \underline i "s un sceptre, je t’ai prom" \underline u " peuple royal&nbsp;:" }
      \concat { "Toi, tu as placé sur ma tête la cour" \underline o "nne d’épines&nbsp;!" }
      " "
      \concat { "Moi, je t’ai par ma toute puiss" \underline a "nce exalté&nbsp;:" }
      \concat { "Toi, tu m’as pendu au gib" \underline e "t de la Croix&nbsp;!" }
    }
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%          Draw score          %%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\include "../libs/layouts/commonLayout.ily"
\include "../libs/layouts/psalmody-2VoicesNoPiano.ily"
\include "../libs/layouts/outputMidi.ily"