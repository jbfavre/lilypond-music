\version "2.18.2"
\language "english"
%{
  Default settings and some translations are needed
  at the beginning so that they can be overrided
%}
\include "libs/commonFunctions.ily"
\include "libs/settings.ily"
\include "libs/translations/fr.ily"
%{
  Since defined in libs/translations/fr.ly
  Following variables must be overrided after file include
%}
antiphonText = "Refrain"
verseText = "Couplets"
sopranoVoiceTitle = "S."
altoVoiceTitle = "A."
tenorVoiceTitle = "T."
bassVoiceTitle = "B."

%{
  Composition details
%}
title = "Seigneur Jésus, tu es vivant"
subtitle = "Chant de louange pour chœur mixte"
real_poet = "Jean Baptiste Favre"
composer = "Jean Baptiste Favre"
dedicace = ""
signature = ""
signatureDate = ""

staffCustomSize = 16

global = {
    \time 3/8
    \key g \major
    \set Timing.beamExceptions = #'()
    \set Timing.beatStructure = #'(3)
    \set Score.markFormatter = #format-mark-box-numbers
    \phrasingSlurUp \slurDown \dynamicUp
  }

sopranoAntiphonMusic = \relative c'' {
  \partial 8 b,8 e4 e8 g4. b8 c b a4. g4 g8 g a g g4. fs4 b,8 \break
  e4 e8 g4. fs8 g a b4. g fs8 e d e4. \bar "|." \break
  }
altoAntiphonMusic = \relative c' {
  \partial 8
  s4.*15
  }
tenorAntiphonMusic =  \relative c' {
  \partial 8
  s4.*15
  }
bassAntiphonMusic =  \relative c {
  \partial 8 s8 e4. c g d'4 ds8 e4 d8 c4. b ds4 b8
  c4. g d'4 ds8 e4 d8 a4 as8 b4. e
  }
figuredBass = \figuremode {
    s8 <5>4. <5> <5> <5>4 <6 7\+>8 <5>4. <5> <5 6\+>
    <6>4. <5> <5> <5>4 <6 7\+>8 <5>4. <5 7\+>4 <6+ _+>8 <5>4. <5>
  }
harmony = \figuremode {
    s8 <I>4. <VI> <III> <VII>4 <V>8 <I>4. <VI> <V>
    <V>4. <VI> <III> <VII>4 <V>8 <I>4. <IV>4 <II>8 <V>4. <I>
  }

antiphonLyrics = \lyricmode {
  Sei -- gneur Jé -- sus, tu es vi -- vant&nbsp;; À toi puis -- san -- ce~et gloi --
  re&nbsp;! Es -- prit de Dieu, nous t'at -- ten -- dons&nbsp;; Dieu&nbsp;! Viens nous sau -- ver&nbsp;!
  }

sopranoAntiphonLyrics = \antiphonLyrics
altoAntiphonLyrics = \antiphonLyrics
tenorAntiphonLyrics = \antiphonLyrics
bassAntiphonLyrics = \antiphonLyrics

sopranoVerseMusic = \relative c' {
  b8 g a b c d d c b a4. g4 g8 g a g g4. fs4. \break
  b8 g a b a g fs b a g4. g4. fs8 e d e4.
  }

altoVerseMusic = \relative c' {
  }

tenorVerseMusic = \relative c' {
  }

bassVerseMusic = \relative c {
  g'4. e d d8 ds4 e4 d8 c4. b b8 b' a
  g4. e b c4 b8 a4 as8 b4. e
  }
verseFiguredBass = \figuremode {
    <5>4. <5> <5> <5>8 <6 7\+>4 <5>4. <5> <5 6\+> <5>
    <5>4. <5> <5> <5>4 <6>8 <5 7\+>4 <6+ _+>8 <5>4. <5>
  }
verseHarmony = \figuremode {
    <III>4. <I> <VII> <VII>8 <V>4 <I>4. <VI> <V> <V>
    <III>4. <I> <V> <VI>4 <III>8 <IV>4 <II>8 <V>4. <I>
  }

\include "libs/settingsPiano.ly"
%\include "libs/layouts/commonPiano.ily"


groupedVersesLyrics = <<
  >>

verseLyrics =  <<
  >>

%{
  Include layout and draw score
%}
\include "libs/layouts/commonLayout.ily"
\include "libs/psalmody.ily"
\include "libs/layouts/singlePsalmody.ily"