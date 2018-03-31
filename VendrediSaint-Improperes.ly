\version "2.18.2"
\language "english"
%{
  Default settings are needed at the beginning
  because they are used in antiphon & verse music definition
  You can override default values simply by declaring variables again.
%}
\include "libs/commonFunctions.ily"
\include "libs/settings.ily"
\include "libs/translations/fr.ily"
%{
  Since defined in libs/translations/fr.ly
  Following variables must be overrided after file include
%}
sopranoVoiceTitle = "F."
bassVoiceTitle = "H."
antiphonText = "Intonation"
verseText = "Couplets"

\include "libs/psalmody.ily"

%{
  Composition details
%}
title = "Impropères"
real_poet = ""
subtitle = "Chant des reproches"
composer = "Jean Baptiste Favre"


staffCustomSize = 16

global = {
    \key f \major
  }

SoloBass = \relative c {
  \cadenzaOn
  a'1 a1 bf4 bf a4 \bar "|"
  a1 g4 f g4 \bar "|"
  a4 (g) f2 (e) f4 \bar "|"
  }
sopranoAntiphonMusic = \relative c' {
  \silence \SoloBass
  f4 g a2 f4 g a2 f8 f g g a4 bf8 a g4 g f2 \bar "||" \break
}
altoAntiphonMusic = \relative c' {
  \silence \SoloBass
  }
tenorAntiphonMusic =  \relative c' {
  \silence \SoloBass
  }
bassAntiphonMusic =  \relative c {
  \SoloBass
  f4 c f2 d4 c f2 f8 d c bf a4 g8 d' bf (g) c4 f,2 \bar "||" \break
}

sopranoVerseMusic = \relative c'' {
  \cadenzaOn
  a\breve bf4 g a \bar "|"
  a\breve f1 g4 a g \bar "|" \break
  g\breve a1 g4 f \bar "|"
  f\breve bf1 a4 f g f
  }
altoVerseMusic= \relative c' {
  \silence \sopranoVerseMusic
  }
tenorVerseMusic= \relative c' {
  \silence \sopranoVerseMusic
  }
bassVerseMusic = \relative c {
  \cadenzaOn
  f\breve bf,4 c f \bar "|"
  d\breve bf1 g4 d'4 c4 \bar "|"
  cs\breve a1 e'4 d \bar "|"
  bf\breve g1 d'4 bf b8[ (c)] f,4
  }

sopranoAntiphonLyrics = \lyricmode {
  Ô Dieu saint, Ô Dieu fort, Ô Dieu im -- mor -- tel, prends pi -- tié de nous.
  }
altoAntiphonLyrics = \lyricmode {
  }
tenorAntiphonLyrics = \lyricmode {
  }
bassAntiphonLyrics = \lyricmode {
  "Ô mon" "peuple, Que" t'ai -- je fais&nbsp;?
  "En quoi t'ai-je" con -- tris -- té&nbsp;?
  Ré -- ponds moi.
  Ô Dieu saint, Ô Dieu fort, Ô Dieu im -- mor -- tel, prends pi -- tié de nous.
  }

\include "libs/defaultPianoSettings.ly"
\include "libs/layouts/commonPiano.ily"

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
      \concat { "Moi je t’ai fait sortir d’Égypte, j’ai englouti le Pharaon&nbsp;:" }
      \concat { "Toi, tu m’as livr" \underline é " aux grands prêtres&nbsp;!" }
      " "
      \concat { "Pour toi je m’avançai dans la col" \underline o "nne de nuée&nbsp;:" }
      \concat { "Toi tu m’as condu" \underline i "t à Pilate&nbsp;!" }
      " "
      \concat { "Moi, dans ta main j’ai mis un sceptre, je t’ai promu peuple royal&nbsp;:" }
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
\include "libs/layouts/commonLayout.ily"
\include "libs/layouts/psalmody-2VoicesNoPiano.ily"
%\include "libs/layouts/outputMidi.ily"