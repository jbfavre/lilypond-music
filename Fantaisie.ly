\version "2.24.1"
\include "english.ly"
\header {
  %title = "Une flamme de chandelle"
  %instrument = "Fantaisie pour Piano et Violon"
  composer = "Jean Baptiste Favre"
  %opus = "Op. 4"
  tagline=""
}

global = {
  \key b \minor
  \time 6/8
}

violin = \relative c'' {
  \global
  fs4.~ fs8 g f fs4.~ fs8 g f fs4.~fs8 g ef! fs4. ~ fs8 g8 a \break
  g4.~ g8 a fs g4.~ g8 a g fs4. ~ fs8 e fs fs4. ~ fs8 g a \break
  b4. ~ b8 as b cs4. ~ cs8 b cs ds4.~ ds8 cs! ds ds4. ~ ds8 e4 \break
  e4. ~ e8 b cs! ef4. ~ ef8 bf8 c! d4. ~ d8 a8 d c4. ~ c8 b4 \break
  s2.*4 \break
  s2.*4 \break
  s2.*4 \break
  s2.*4 \break
  s2.*4 \break
  s2.*4 \break
  s2.*4 \break
  s2.*4 \break
  s2.*4 \break
  s2.*4 \break
  s2.*4 \break
  s2.*4 \break
  s2.*4 \break
  s2.*4 \break
  s2.*4 \break
  s2.*4 \break
  s2.*4 \break
  s2.*4 \break
  s2.*4 \break
}

right = \relative c' {
  \global
  <b d>2. <cs e> <c ef> <c d>4. ~ <c d>8 <b d>4
  <b e>2. <bf c>2. <c d>2. <c d>4. ~ <c d>8 <b d>4
  <d fs>2. <e fs> <fs c'> <g b>4. ~ <g b>8 <g b>4
  <g b>2. <g b> <fs c'> <d fs>4. ~ <d fs>8 <d g>4
  s2.*4
  s2.*4
  s2.*4
  s2.*4
  s2.*4
  s2.*4
  s2.*4
  s2.*4
  s2.*4
  s2.*4
  s2.*4
  s2.*4
  s2.*4
  s2.*4
  s2.*4
  s2.*4
  s2.*4
  s2.*4
  s2.*4
}

left = \relative c {
  \global
  b8 d cs b4. as8 cs b as4. a!8 c b a4. g8 d' fs g4 fs8
  e8 g fs e4. ef8 g f ef4. d8 fs e d4. g,8 d' fs g4 e8
  b8 d cs b4. as8 cs b as4. a!8 c b a4. g8 b e g4 fs8
  e8 g fs e4. ef8 g f ef4. d8 fs e d4. g,8 d' fs g4 fs8
  s2.*4
  s2.*4
  s2.*4
  s2.*4
  s2.*4
  s2.*4
  s2.*4
  s2.*4
  s2.*4
  s2.*4
  s2.*4
  s2.*4
  s2.*4
  s2.*4
  s2.*4
  s2.*4
  s2.*4
  s2.*4
  s2.*4
}

violinPart = \new Staff \with {
  instrumentName = "Violon"
  midiInstrument = "violin"
} \violin

pianoPart = \new PianoStaff \with {
  instrumentName = "Piano"
} <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
} <<
  \new Voice { \voiceOne {\transpose fs fs, {\violin}}}
  \new Voice { \voiceTwo {\right}}
>>
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass \left }
>>

\score {
  <<
    %\violinPart
    \pianoPart
  >>
  \layout {    \context {
        \Score
        \omit BarNumber
    } }
  \midi {
    \tempo 4=100
  }
}
