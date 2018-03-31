\version "2.18.2"
\language "english"

#(set-global-staff-size 14)
\header {
  title = "Litanie"
  composer = "Jean Baptiste Favre"
  arranger = "Clichy - 2018"
  tagline = ##f
}

global = {
  \key a \minor
}

sopranoMusic =   \relative c' {
  e2. e4 a2. a4 g a g f f2 e
  c2. c4 d2. d4 e2. e4 d2 c2 \break
  e2. e4 a2. a4 g a g f f2 e2
  c2. c4 d2. d4 e2. e4 a,1
}

altoMusic = \relative c' {
  b1 c1 b1 c1
  a1 a2 b4 a gs1 a
}

tenorMusic = \relative c' {
  gs1 f1 g1 g1
  f1 f1 e1 e1
  
}

bassMusic = \relative c {
  e1 f g c,2. b4
  a2 f'4 e
  d2 b4 d
  e2 <e e,>2 a,4 b c d  
}

\score {
  \new GrandStaff <<
    \new ChoirStaff <<
      \new Staff \with { instrumentName = \markup {\right-align "Soprano"} } <<
        \global \clef treble
        \new Voice = "soprano" { \sopranoMusic }
      >>
      \new Staff \with { instrumentName = \markup {\right-align "Alto"} } <<
        \global \clef treble
        \new Voice = "alto" { \altoMusic }
      >>
      \new Staff \with { instrumentName = \markup {\right-align "Tenor"} } <<
        \global \clef "treble_8"
        \new Voice = "tenor" { \tenorMusic }
      >>
      \new Staff \with { instrumentName = \markup {\right-align "Basse"} } <<
        \global \clef bass
        \new Voice = "bassi" { \bassMusic }
      >>
    >>
  >>
  \layout { ragged-last = ##f }
}
