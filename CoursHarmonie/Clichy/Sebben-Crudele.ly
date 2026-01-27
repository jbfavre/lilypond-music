\version "2.24.4"
\language "english"

\header {
  title = "Sebben, Crudele"
  composer = "Antonio Caldara (1671-1763)"
  tagline = ""
}

\paper {
  #(set-paper-size "a4")
  %system-system-spacing = #'((basic-distance . 0.1) (padding . 0))
  ragged-last-bottom = ##f
  ragged-bottom = ##f
}

global = {
  \key d \minor
  \time 3/4
  \tempo "Allegretto grazioso"
}

sopranoVoice = \relative c'' {
  \override Score.BarNumber.break-visibility = ##(#f #t #t)
  \global
  \dynamicUp
  r2. r2. r2. r2. a4 a d c4. bf8 a4 \break
  bf4 g8 a bf4 bf a2 fs4 g a bf4. a8 g4 e f! g a bf c \break
  bf8 a a4 g8 f f2. r2. r2. r2. r2. a4 b c \break
  c2 b4 b cs d d2 cs4 d d8 [(c)] c (bf) bf a4 g8 f [(e)] f4 \grace { e16 f16 } e4. d8 d2.
}

rightOne = {
  \sopranoVoice
}

rightTwo = \relative c' {
  \global
  % En avant la musique.
  s2.*4 f4 f4 bf4 f2 f4 f4 e2 f2.
  d2. d2. c2. c4 d e f f e8 d c2.
}

leftOne = \relative c' {
  \global
  % En avant la musique.
  s2.*4 d4 d4 f4 f4 e8 d c4 c2. c2.
  a4 g fs g2. g4 f e f2. d'4 c4 c a2.
}

leftTwo = \relative c {
  \global
  % En avant la musique.
  s2.*4 d4 c bf a2 f4 g c2 f2.
  c4 bf a g2 bf4 bf4 a g f d a' bf c c f2.
  r2. r2. r2. r2. d4 g, fs g2. e'4 a, gs a2. bf4 c e f g a a, a2 d2.
}

sopranoVoicePart = \new Staff \with {
  instrumentName = "Soprano"
  midiInstrument = "choir aahs"
} { \sopranoVoice }

pianoPart = \new PianoStaff \with {
  instrumentName = "Piano"
} <<
  \new Staff = "right" \with {
    midiInstrument = "acoustic grand"
  } << \rightOne \\ \rightTwo >>
  \new Staff = "left" \with {
    midiInstrument = "acoustic grand"
  } { \clef bass << \leftOne \\ \leftTwo >> }
  \figures {
    \bassFigureExtendersOn
    s2.*4 <5>4 <5>4 <5\!>4 <6>2 <5>4 <6 4>4 <5\!>2 <5\!>2.
    <4\+>4 <6> <6\! 4> <5>2 <6>4 <4\+>4 <6> <6\! 4> <5> <6> <6\!> <5> <6 4> <5> <5\!>2.
  }
  \figures {
    \bassFigureExtendersOn
    s2.*4 <I>4 <I> <IV>4 <I>4 <I> <I> <V>4 <V>2 <I>2.
    <V>4 <I>4 <V>4 <I>2 <I>4 <V>4 <I> <V> <I> <IV> <I> <IV> <I> <V> <I>2.
    s2.*4
  }
  >>

\score {
  <<
    \sopranoVoicePart
    \pianoPart
  >>
  \layout { }
  \midi { }
}
