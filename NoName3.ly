\version "2.20.0"
\language "english"

\header {
  dedication = "dédicace"
  title = "Titre"
  subtitle = "sous-titre"
  subsubtitle = "sous-sous-titre"
  instrument = "pour piano"
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
  #(define fonts
    (set-global-fonts
     #:music "emmentaler"
     #:brace "emmentaler"
     #:roman "Arial"
     #:sans "Cantarell thin"
    ))
}
removeTags = #'(school)
keepTags   = #'(visuel notvideo)

% Controls Midi dynamics inclusion
% Used with \keepWithTag
% FiguredBass will be displayed if midiTag is set to "midi"
midiTag = "midi"
midiInstrumentName = "acoustic grand"

global = {
  \key g \minor
  \time 4/4
}

rightDynamics = {
  \tempo "Lent, imposant" 4=50
  s1*5
  s2 s8 \tempo 4=132 s4. s1 s4. \tempo 4=85  s8 s2 \tempo 4=60 s1 \tempo 4=75 s1 s1
  s1*20
}
rightOne = \relative c'' {
  \global
  r4 <d g bf d>2.\fermata r4 <d f a d>2.\fermata r4 <e g bf d>2.\fermata r4 <ef g bf d>2.\fermata  r4 <d fs a d>2.\fermata
  d'2~ d8 c8 bf! a g fs ef! d c bf! a g
  fs ef! d cs d4. d8 bf'2. a4 g1 R1 d'2 d4 d
  c2. d4 bf2 a g1 r4 g4 g a bf2. bf4
  c2. c4 d1 d2 d4 d f2. f4 d2 c
  bf1 r4 bf4 af af g2 c4 ef ef2. d4 d4 e f g
  af2 f4 f ef2 c ef2. df4 df2 c2 s1
}

rightTwo = \relative c'' {
  \global
   s1*7
   s1*3 r1 g2 g4 g
   g2. g4 g2 fs2 s1 r4 ef4 ef ef f2. f4
   g2. g4 a1 g2 g4 g a2. a4 a2 a
   g1 r4 ef4 ef ef c2 g'4 g b2. b4 c c c c
   c2 c4 c af2 af bf2. bf4 g2 g s1
}

leftOne = \relative f {
  \global
  r4 <g bf d g>2.\fermata r4 <a d f a>2.\fermata r4 <g bf e g>2.\fermata r4 <g c ef g>2.\fermata r4 <a d fs a>2.\fermata R1*2
  R1*2 s1*3
  s1*5
  s1*5
  s1*5
  s1*5
}

leftTwo = \relative f {
  \global
  <g, g,>1\fermata <f f,>1\fermata <e e,>1\fermata <ef! ef,!>1\fermata <d d,>1\fermata R1*2
  R1 d1 g'8( d g bf d bf g d) g8( d g bf d bf g d) g8( d g bf d bf g d)
  ef( c ef g c g ef c) g'( d g bf d a fs d) g( d g bf d bf g d) ef( bf ef g bf g ef bf) d( bf d f bf f d bf)
  ef( c ef a c a ef c) fs( d fs a d cs c a) g( d g bf d bf g d) f( c f a c a f c) fs( d fs a c a fs d)
  g( d g bf d bf g d) ef( c ef af c af! ef c) ef( c ef g c g ef c) g'( d g b! d b! g d) e!( c e! g c g e! c)
  f( c f af c af f c) ef( c ef af c af ef c) ef( bf ef g bf g ef bf) e( c e g c g e c) s1
}

pianoStaff = \new PianoStaff \with {
    instrumentName = "Piano"
  } <<
    \new Staff = "right" \with {
      midiInstrument = "acoustic grand"
    } << \rightOne \\ \rightTwo \\ \tag #'midi \rightDynamics >>
    \tag #'visuel \new Dynamics << \rightDynamics >>
    \new Staff = "left" \with {
      midiInstrument = "acoustic grand"
    } { \clef bass << \leftOne \\ \leftTwo >> }
  >>

\score {
  \removeWithTag \removeTags \keepWithTag \keepTags \pianoStaff
  \layout {
    \context {
      \FiguredBass
      \override BassFigure #'font-size = #-1
    }
  }
}

\score {
  \removeWithTag \removeTags \keepWithTag midi \pianoStaff
  \midi {
    \context {
      \Staff
      \remove "Staff_performer"
    }
    \context {
      \Voice
      \consists "Staff_performer"
    }
  }
}
