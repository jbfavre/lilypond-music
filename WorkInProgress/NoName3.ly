\version "2.20.0"
\language "english"
\include "libs/layouts/book-titling.ily"

#(define absolute-volume-alist '())
#(set! absolute-volume-alist
      (append
       '(
         ("ff" . 1)
         ("f" . 0.80)
         ("mf" . 0.65)
         ("mp" . 0.50)
         ("p" . 0.35)
         ("pp" . 0.20)
         )
       absolute-volume-alist))
%{ Default values from /usr/share/lilypond/2.20.0/scm/midi.scm
         ("ff" . 1)
         ("f" . 0.80)
         ("mf" . 0.65)
         ("mp" . 0.50)
         ("p" . 0.35)
         ("pp" . 0.20)
%}
\header {
  title = "No name (yet) 3"
  composer = "Jean Baptiste Favre"
  opus = "Op. x"
  dedication = \markup { \italic "Saint Pierre Quiberon, septembre 2020" }
  subtitle = ""
  tagline = ""
  date = "Saint Pierre Quiberon, septembre 2020"
}

%{
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
%}
\paper {
  #(set-paper-size "a4")
  #(define fonts
    (set-global-fonts
     #:music "emmentaler"
     #:brace "emmentaler"
     #:roman "Arial"
     #:sans "Cantarell thin"
    ))
%{  bookTitleMarkup = \markup \column {
    \fill-line { \fontsize #5 \fromproperty #'header:composer }
    \when-property #'header:date \fill-line { \combine \vspace #1.2 \fontsize #1 \sans \fromproperty #'header:date }
    \combine \null \vspace #14
    \fill-line { \postscript #"-40 0 moveto 80 0 rlineto stroke" }
    \combine \null \vspace #4
    \fill-line { \fontsize #10 \fromproperty #'header:title }
    \combine \null \vspace #1
    \fill-line { \when-property #'header:subtitle \fontsize #3 \sans \fromproperty #'header:subtitle }
    \combine \null \vspace #1
    \fill-line { \postscript #"-10 0 moveto 20 0 rlineto stroke" }
    \when-property #'header:opus \fill-line { \combine \vspace #1.5 \fontsize #5 \sans \bold \fromproperty #'header:opus }
    \fill-line { \postscript #"-40 0 moveto 80 0 rlineto stroke" }
    \combine \null \vspace #14
    \fill-line{
      \column{
        \when-property #'header:poet \fill-line {
          \concat { \typewriter "Paroles: " \fontsize #2 \italic \fromproperty #'header:poet }
        }
        \when-property #'header:arranger \fill-line {
          \concat { \typewriter "Arrangements: " \fontsize #2 \italic \fromproperty #'header:arranger }
        }
      }
    }
  }
  scoreTitleMarkup = \markup {
    \column {
      \vspace #0.5
      \fill-line {
        \line { "" }
        \center-column { \fontsize #6 \bold \fromproperty #'header:title }
        \line { "" }
      }
      \fill-line {
        \line { "" }
        \center-column { "" }
        \line {
          \right-column {
            \fontsize #1 \fromproperty #'header:composer
            \fontsize #0.8 \sans \fromproperty #'header:opus
          }
        }
      }
      \vspace #1
    }
  }
%}
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
  s2 \tempo 4=132 s2 s4. \tempo 4=85  s8 s2 \tempo 4=60 s1 \tempo 4.=50 s2. s2.
  s2.*4 \tempo 4=100 s1 \tempo 4.=50 s2.*7
  \tempo 4=100 s1
  \tempo 4.=50 s2.*16
}
rightOne = \relative c'' {
  \global
  % introduction
  r4 <d g bf d>2.\fermata r4 <d f a d>2.\fermata r4 <e g bf d>2.\fermata r4 <ef! g bf d>2.\fermata r4 <d fs a d>2. \fermata \break
  d'2~ d16 c16 bf! a g fs ef! d c bf! a g fs ef! d cs16 d4. d8 bf'2. a4 \time 6/8 g2.~ g2. \break
  % motif 1
  d'4.^"motif 1" d4 d8 c4. c4 d8 bf4. a g2. \time 4/4 r4 g g a \time 6/8 bf4.~ bf4 bf8 c4. ef d4. f8 e ef \break
  % motif 2
  d4.^"motif 2" d4 d8 f4.~ f4 f8 d4. c bf2. \time 4/4 r4 bf4 c d \time 6/8 ef4.~ ef4 ef8 a,4. bf4 c8 d2. \break
                g,4.~ g4 a8 bf2. bf4.~ bf4 c8 d2. d4. g4 f8 ef4. d4 c8 \tuplet 2/3 {bf a d c} c4. bf \break
                af4. af4 af8 g4. c4 ef8 ef4.~ ef4 d8 \tuplet 2/3 {d e f g} af2.
%{  \key af \major af2 bf4 af af2 g f g4 f f2 ef d2 fs4 a d ef e fs
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
%}
}

rightTwo = \relative c'' {
  \global
   s1*7
}

leftOne = \relative f {
  \global
  r4 <g bf d g>2.\fermata r4 <a d f a>2.\fermata r4 <g bf e g>2.\fermata r4 <g c ef! g>2.\fermata r4 <a d fs a>2.\fermata R1*3
  r8 bf( d g d bf) r8 bf( d g d bf)
  %motif 1
  r8 bf( d g d bf) r8 c( d ef d c) r8 bf( d) r8 a( c) r8 bf( d g d) r8
}

leftTwo = \relative f {
  \global
  % introduction
  <g, g,>1\fermata <f f,>1\fermata <e e,>1\fermata <ef! ef,!>1\fermata <d d,>1\fermata R1*2 d1
  g'2. g2.
  %motif 1
  g2. g2. g4. fs4. g4.~ g4 f8 ef2 d4 c g4.~ g8 g'8 f c4.~ c8 a'8 g d16 fs a d fs a r4.
  g,2. f2. fs2. g2.
  s1 s2. 16
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
