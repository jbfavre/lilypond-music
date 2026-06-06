\version "2.24.4"

\relative c' {
  \clef treble
  s1 c1 d f e c g' f e d c \break
  s1 c'1 d f e c g' f e d c \break
  s1 \break
  s1 a,1 b c a f' e d e c b a \break
  s1 a'1 b c a f' e d e c b a \break
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

