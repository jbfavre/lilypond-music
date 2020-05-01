\version "2.20.0"
\language "english"

\header {
  dedication = "dédicace"
  title = "Titre"
  subtitle = "sous-titre"
  subsubtitle = "sous-sous-titre"
  instrument = "instrument"
  composer = "Jean Baptiste Favre"
  arranger = "Jean Baptiste Favre"
  poet = "Jean Baptiste Favre"
  meter = "mètre"
  piece = "pièce"
  opus = "op. 3"
  copyright = "2020"
  tagline = "slogan"
}

\paper {
  #(set-paper-size "a4")
}

global = {
  \key g \minor
  \time 4/4
  \tempo "Lent, imposant" 4=50
}

rightOne = \relative c'' {
  \global
  r4 <d g bf d>2.\fermata r4 <d f a d>2.\fermata r4 <e g bf d>2.\fermata r4 <ef g c d>2.\fermata  r4 <d fs a d>2.\fermata
  d'2~ d8 c8 bf! a g fs ef! d c bf! a g fs ef! d cs d4. d8 bf'2. a4 g1 R1 d'2 d4 d c2. d4 bf2 a g1 r4 g4 g a bf2 bf c2. c4 d1
  d2 d4 d f2. f4 d2 c bf1 r4 bf4 af af g2 c4 ef ef2. d4 d4 e f g af2 f4 f ef2 c ef2. d4 d2 c2
}

rightTwo = \relative c'' {
  \global
   s1*8
}

leftOne = \relative f {
  \global
  r4 <g bf d g>2.\fermata r4 <a d f a>2.\fermata r4 <g bf e g>2.\fermata r4 <g c ef g>2.\fermata r4 <a d fs a>2.\fermata R1*4
}

leftTwo = \relative f {
  \global
  <g, g,>1\fermata <f f,>1\fermata <e e,>1\fermata <ef! ef,!>1\fermata <d d,>1\fermata R1*4
  g'8 d g bf d bf g d g8 d g bf d bf g d g8 d g bf d bf g d ef c ef g c g ef c g' d g bf d a fs d
  g d g bf d bf g d ef bf ef g bf g ef bf d bf d f bf f d bf ef c ef a c a ef c fs d fs a d a fs d
  g d g bf d bf g d f c f a c a f c fs d fs a c a fs d g d g bf d bf g d ef c ef af c af! ef c
  ef c ef g c g ef c g' d g b! d b! g d e! c e! g c g e! c f c f a c a f c ef c ef af c af ef c
  ef bf ef g bf g ef bf e c e g c g e c

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
