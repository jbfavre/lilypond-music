\version "2.24.4"
\language "english"

\header {
  title = "Sarabande"
  subtitle = "extraite de l‘opéra «Almira»"
  composer = "G. F. Handel (1685 - 1759)"
}

\paper {
  #(set-paper-size "a4")
  ragged-bottom = ##f
  markup-system-spacing =
    #'((padding . 10)
       (basic-distance . 15)
       (minimum-distance . 10)
       (stretchability . 15))
  system-system-spacing =
    #'((padding . 10)
       (basic-distance . 15)
       (minimum-distance . 10)
       (stretchability . 15))
}

global = {
  \key g \minor
  \time 3/2
}

rightOne = \relative c'' {
  \global
  d2 d r4 d4 ef2 ef r4 ef4 ef2 ef2 r4 ef4 ef d d2 r4  d4 d2 d2 r4 ef4 \break
  c2 c r4 c4 c d bf2. a4 a2 a r2 d2 d2 r4 g4 ef2 2 r4 ef4 \break
  ef2 ef r4 f4 d2 d2 r4 d ef a, a2 r4 fs'4 g4 c, c2 r4 d4 bf a a2. g4 g2 g2 r2 \textEndMark \markup { \italic { "Fine" } }  \bar "||" \break
  b2 b r4 b4 c2 c2 r4 c4 d2 d f ef ef r4 g4 af2 b, r4 b4 c2 f r4 g4 \break
  ef d ef2 d4 c c2 c2 r2 ef2 ef r4 f4 d2 d2 r4 f4 g c, c2. bf4 bf2 bf r2 \textEndMark \markup { \italic { "D.C. al Fine" } } \bar "|." \break

}

rightTwo = \relative c'' {
  \global
  s1.*28

}

leftOne = \relative c' {
  \global
  s1.*28

}

leftTwo = \relative c' {
  \global
  s1.*28

}

\score {
  \new PianoStaff \with {
    instrumentName = "Piano"
  } <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    } << \rightOne \\ \rightTwo >>
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    } { \clef bass << \leftOne \\ \leftTwo >> }
  >>
  \layout { }
  \midi { }
}
