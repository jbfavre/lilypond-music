\version "2.24.4"
\language "english"

\relative c' {
  \clef treble
  s1 f1 g c, a' f d bf' a g f \break
  s1 f1 g c, a' f d bf' a g f \break
  s1 \break
  s1 d1 a' e f d bf' g a f e d \break
  s1 d1 a' e f d bf' g a f e d \break
  s1 \break
  \repeat unfold 6
  {
    s1
    \break
  }
}

\layout {
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
  \context {
    \Staff
    \remove "Clef_engraver"
    \remove "Time_signature_engraver"
    \remove "Bar_engraver"
  }
}

\paper {
  indent = 0
  ragged-last-bottom = ##f
  top-system-spacing = #'((minimum-distance . 10))
  last-bottom-spacing = #'((minimum-distance . 10))
}

\header {
  tagline = ##f
}

