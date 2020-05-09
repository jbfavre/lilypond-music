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
  opus = "op. ?"
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
  \tempo "Lent, presque pesant" 4=50
  s1*5
  s2 s8 \tempo 4=132 s4. s1 s4. \tempo 4=85  s8 s2 \tempo 4=60 s1 \tempo 4=70 s1 s1
  s1*20
}
rightOne = \relative c'' {
  \global
  % introduction
  r4 <d g bf d>2.\fermata r4 <d f a d>2.\fermata r4 <e g bf d>2.\fermata r4 <ef g bf d>2.\fermata  <d fs a d>1\fermata
  d'2~ d8 c8 bf! a \break
  g fs ef! d c bf! a g fs ef! d cs d4. d8 bf'2. a4 g1 R1
  % motif 1
  d'2^"motif 1" d4 d c2. d4 bf2 a g1 r4 g g a bf2. bf4 c2 ef d1
  % motif 2
  d2^"motif 2" d4 d f2. ef4 d2 c bf1 r4 bf4 c d ef2. ef4 a,2 bf a1 g2 g4 a bf1 bf2 bf4 c d1 d2 g4 f ef2 d4 c bf a d c c2 bf2
  \key af \major af2 bf4 af af2 g f g4 f f2 ef d2 fs4 a d ef e fs
  \key g \minor d2 d4 d c2. d4 bf2 a g1
  r4 g4 g a bf2. bf4 c2. c4 d1
  d2 d4 d f2. f4 d2 c bf1 \pageBreak
  \key af \major r4^"La bémol majeur" bf4 af af g2 c4 ef ef2. d4 d4 e f g
  \key f \minor  af2^"Fa mineur" f4 f ef2. c4 ef2 df2 df2. c4 r4 df4 c bf af2 f4 bf c2 c2 f,1 \break
  f2 f4 g af1 af2 af4 bf c1 c2 c4 c \break
  f2. f4 ef2. df4 df2 c r4 bf af gf f2 bf4 df \break
  df2. c4
  \key bf \major bf2^"Si bémol majeur" c4 d ef2 g,4 c bf2 a bf1 \break
  \key g \minor g2 g4 a bf1 bf2 bf4 c d1 R1 \break
  s1*5 \break
  s1*5 \break
  s1*5 \break
  s1*5 \break
  s1*5 \break
  s1*5 \break
  s1*5 \break
  s1*5 \break
  s1*5 \break
  s1*5 \break
}

rightTwo = \relative c'' {
  \global
   s1*7
   s1*3 R1 g2 g4 g
   g2. g4 g2 fs2 s1 r4 g g f ef2. ef4 g2 a4 g fs1
   s1*22
   g2 g4 g
   g2. g4 g2 fs2 s2. f4 ef4 ef4 d c bf2. f'4
   g2. g4 a1 g2 g4 g a2. a4 a2 a
   g1 r4 ef4 ef ef c2 g'4 g b2. b4 c c c c
   c2 c4 c af2. af4 bf2 bf g2. g4 s1
}

leftOne = \relative f {
  \global
  r4 <g bf d g>2.\fermata r4 <a d f a>2.\fermata r4 <g bf e g>2.\fermata r4 <g c ef g>2.\fermata <a d fs a>1\fermata R1*2
  R1*2 s1*2
  % motif 1
  s1*5 s1*3
  s1*22
  s1*5 s1*5
  s1*5
  s1*5
  s1*5
}

leftTwo = \relative f {
  \global
  % introduction
  <g, g,>1\fermata <f f,>1\fermata <e e,>1\fermata <ef! ef,!>1\fermata <d d,>1\fermata R1*2 R1 d1 g'8( d g bf d bf g d) g8( d g bf d bf g d)
  % motif 1
  g8( d g bf d bf g d) ef8( c ef g c g ef f) g8( d g bf) d8( c a fs) g8( d g bf d bf g d)  g8( d g bf d bf f d) ef8( bf ef g bf g ef d) ef8( c ef g c a g ef) fs8( d fs a d c a fs)
  g8( d g bf d bf g d) f8( c f a c a f c) fs8( d fs a d a fs d) g8( d g bf) f8( d f bf) ef,8(bf ef g bf g ef d) c8( g c ef g ef c g) c8( g c ef) g8(d g bf) fs8(d fs a d a fs d) g2 ef4 c g'1 ef2 f bf,1 g c d ef ef ef f c d d'4 c bf a
  % motif 2
  g8( d g bf d bf g d) ef8( c ef g c g ef f) g8( d g bf d c a fs) g8( d g bf d bf f d) ef8( bf ef g bf g ef c) d8( bf d f bf f d bf) ef8( c ef a c a g ef) fs8( d fs a d cs c a)
  % motif 3
  g8( d g bf d bf g d) f8( c f a c a f ef) fs8( d fs a c a fs d) g8( d g bf d bf g d)
  \key af \major ef8( c ef af c af! ef d) ef8( c ef g c g ef f) g8( d g b! d b! g d) e!8( c e! g c g e! c)
  % motif 4
  \key f \minor f8( c f af c af f df) ef8( c ef af c af ef df) ef8( bf ef g bf g ef df) e8( c e g c g e c) df8( af df f af f df ef) f8( c f af c af f df) e8( c e! af c af g e!) f8(c f af c af f c)
  df2 c4 bf f2 f'4 ef df2 c4 df c1 f2 f4 ef
  df2 c4 bf ef1 c4 e f af gf1 f1 f1
  \key bf \major f2 ef4 d c2 ef f f g1
  \key g \minor ef2 d4 c g2 g'4 f ef2. ef4 d1 R1
  s1*5
  s1*5
  s1*5
  s1*5
  s1*5
  s1*5
  s1*5
  s1*5
  s1*5
  s1*5
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
