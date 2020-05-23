\version "2.18.2"
\language "english"

%\include "../libs/commonFunctions.ily"
%\include "../libs/settings.ily"
%\include "../libs/translations/fr.ily"
%\include "../libs/layouts/book-titling.ily"
%\include "../PetiteMesseSaintVincentDePaul/pianoSettings.ily"

alleluiaHeader = \header {
  title = "Petite messe de Saint Vincent de Paul"
  piece = "Alleluia"
  composer = "Jean Baptiste Favre"
  poet = "AELF"
  opus = ##f
  copyright = \markup { \typewriter "Extrait de la Petite messe de Saint Vincent de Paul" }
}

alleluiaKeyTime = {
  \key g \major
  \time 3/4
  %\tempo 2. = 50
}

alleluiaRythm = \relative c' {
    \mark \default
    s2.*6 \break
    \mark \default
    s2.*6 \bar "|."
  }
alleluiaSolistMusic = \relative c'' {
    a4. cs8 a4 b2. cs4. b8 a4 b2. d4 cs a gs2.
    \mark \default
    a4. cs8 a4 b2. cs4. b8 a4 b2 b4 a gs2 a2.
  }
alleluiaSolistLyrics = \lyricmode {
    Al -- le -- lu -- ia&nbsp;! Al -- le -- lu -- ia&nbsp;! Al -- le -- lu -- ia&nbsp;!
    Al -- le -- lu -- ia&nbsp;! Al -- le -- lu -- ia&nbsp;! Al -- le -- lu -- ia&nbsp;!
  }

alleluiaSopranoMusic = \alleluiaSolistMusic
alleluiaSopranoLyrics = \alleluiaSolistLyrics

alleluiaAltoMusic = \relative c' {
    e4. e8 e4 gs2. fs4. fs8 fs4 fs2. fs4 fs fs e2.
    e4. e8 e4 gs2. fs4. fs8 fs4 fs2 fs4 fs d2 e2.
  }
alleluiaAltoLyrics = \alleluiaSolistLyrics

alleluiaTenorMusic = \relative c' {
    cs4. cs8 cs4 e2. a,4. a8 cs4 b2. b4 a b b2.
    cs4. cs8 cs4 e2. a,4. a8 cs4 b2 b4 d b2 cs2.
  }
alleluiaTenorLyrics = \alleluiaSolistLyrics

alleluiaBasseMusic = \relative f {
    a4. a8 a4 e2. fs4. fs8 e4 d2. b4 cs d e2.
    a4. a8 a4 e2. fs4. fs8 e4 d2 d4 b e2 a,2.
  }
alleluiaBasseLyrics = \alleluiaSolistLyrics

alleluiaScore =  <<
        \new ChoirStaff
        <<
          \new Staff \with { instrumentName = \sopranoVoiceTitle shortInstrumentName = \sopranoVoiceShortTitle }
          <<
            \alleluiaKeyTime \clef treble
            \new Voice = "alleluiaRythm" { \alleluiaRythm }
            \new Voice = "alleluiaSoprano" { \transpose a g { \alleluiaSopranoMusic } \fermata }
            \new Lyrics \lyricsto "alleluiaSoprano" { \alleluiaSopranoLyrics }
          >>
          \new Staff \with { instrumentName = \altoVoiceTitle shortInstrumentName = \altoVoiceShortTitle }
          <<
            \alleluiaKeyTime \clef treble
            \new Voice = "alleluiaAlto" { \transpose a g { \alleluiaAltoMusic } \fermata }
            \new Lyrics \lyricsto "alleluiaAlto" { \alleluiaAltoLyrics }
          >>
          \new Staff \with { instrumentName = \tenorVoiceTitle shortInstrumentName = \tenorVoiceShortTitle }
          <<
            \alleluiaKeyTime \clef "treble_8"
            \new Voice = "alleluiaTenor" { \transpose a g { \alleluiaTenorMusic } \fermata }
            \new Lyrics \lyricsto "alleluiaTenor" { \alleluiaTenorLyrics }
          >>
          \new Staff \with { instrumentName = \bassVoiceTitle shortInstrumentName = \bassVoiceShortTitle }
          <<
            \alleluiaKeyTime \clef bass
            \new Voice = "alleluiaBasse" { \transpose a g { \alleluiaBasseMusic } \fermata }
            \new Lyrics \lyricsto "alleluiaBasse" { \alleluiaBasseLyrics }
          >>
        >>
        \new PianoStaff \with { instrumentName = \organVoiceTitle shortInstrumentName = \organVoiceShortTitle }
        <<
          \new Staff <<
            \alleluiaKeyTime \clef treble
            \set Staff.printPartCombineTexts = ##f
            \partcombine
            << \transpose a g { \alleluiaSopranoMusic } \fermata >>
            << \transpose a g { \alleluiaAltoMusic } >>
          >>
          \new Staff <<
            \alleluiaKeyTime \clef bass
            \set Staff.printPartCombineTexts = ##f
            \partcombine
            << \transpose a g { \alleluiaTenorMusic } >>
            << \transpose a g { \alleluiaBasseMusic } \fermata >>
          >>
        >>
      >>