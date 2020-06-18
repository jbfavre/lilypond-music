\version "2.18.2"
\language "english"

\header {
  title = \markup
     \center-column {
       \combine \null \vspace #1
       "L'écriture musicale"
       "Les bases fondamentales"
       " "
      }
  subtitle = "Livre 1, chapitre 9"
  tagline = ""
}
\paper {
  #(include-special-characters)
  print-all-headers = ##t
  max-systems-per-page = 10
  %min-systems-per-page = 4
  %systems-per-page=6
}
%{
global = { \time 4/4 \key g \major }
motif = {
  g4 b d4. c8 b a g d' fs,4
}
\score {
  \new PianoStaff <<
    \new Staff <<
      \clef treble
      \global
      \new Voice = "soprane" {  \voiceOne
        \relative c'' {
          r1 r1 r2 \motif g4 b8 c d e d4
          \bar "|."
        }
      }
      \new Voice = "alto" { \voiceTwo
        \relative c'' {
          r2 \motif e4 d2 a'4 g8 fs d2 d2 g4 fs d
        }
      }
    >>
    \new Staff <<
      \clef bass
      \global
      \new Voice = "tenor" { \voiceOne
        \relative f {
          r1 r2 \motif g8 a g2 a4 b d b8 a a4
        }
      }
      \new Voice = "bass" { \voiceTwo
        \relative f, {
          r1 r1 r1 r2 \motif
        }
      }
    >>
  >>
  \header {
    title = ##f
    subtitle = ##f
    piece = "exercice 9.1"
  }
  \layout {}
  \midi {}
}
global = { \time 3/4 \key c \major }
\score {
  \new StaffGroup <<
    \new Staff <<
      \clef treble
      \global
      \relative c'' {
        r4 r4 r4 r2. c4 \tuplet 3/2 { e8 d e } g8. f16 e8. d16 d8. e16 d4
        r4 \tuplet 3/2 { e8 d e } \tuplet 3/2 { b8 c d } b4 c8. b16 a8. a16 \tuplet 3/2 { b8 c d } e4 \tuplet 3/2 { e8 f e } d8. d16 e4 d c2 r4
        \bar "|."
      }
    >>
    \new Staff <<
      \clef treble
      \global
      \relative c' {
        r4 r4 r4 c4 \tuplet 3/2 { e8 d e } g8. f16 e8. d16 \tuplet 3/2 { c8 d c } d4 \tuplet 3/2 { g8 a g } \tuplet 3/2 { a b a } b4
        \tuplet 3/2 { e,8 d e } \tuplet 3/2 { a,8b c } d8. d16 g8. f16 e4 f8. f16 g4 g8. a16 g4 a4 c8. c16 b8 a g2 r4
      }
    >>
    \new Staff <<
      \clef bass
      \global
      \relative f {
        c4 \tuplet 3/2 { e8 d e } g8. f16 e8. d16 c4 b c a b c \tuplet 3/2 { f8 e f } g4
        r2. \tuplet 3/2 { e8 d e } \tuplet 3/2 { a, b c } d8. d16 b4 c r4 f4 g g, c2 r4
      }
      \new FiguredBass{
        \figuremode {
          \bassFigureExtendersOn
          <0>4 <0> <0>8. <0>16 <6\!>4 <6>8. <6>16 <6\!>4 <5> <5\!> <6> <5> <6>8 <6> <5>4 \break
          r2. <5>8. <5>16 <5\!>8. <5>16 <5\!>4 <6> <5> r4 <6> <6\! 4\!> <5> <5\!>2 r4
        }
      }
      \new FiguredBass{
        \figuremode {
          <_>2. <_> <_> <_> <III>4 <VI>4 <II>4
        }
      }
    >>
  >>
  \header {
    title = ##f
    subtitle = ##f
    piece = "exercice 9.2"
  }
  \layout {}
  \midi {}
}
global = { \time 4/4 \key c \major }
\score {
  \new StaffGroup <<
    \new Staff <<
      \clef treble
      \global
      \relative c'' {
        c4 b c r4 e8 c a g g4 r4 g4 f g r4 c8 a b c c4 r4 \break
        c4 b c r4 e8 c a g g4 r4 g4 f g r4 c8 a b c c4 r4 \break
        c4 b c r4 e8 c a g g4 r4 g4 f g r4 c8 a b c c4 r4 \break
        \bar "|."
      }
    >>
    \new Staff <<
      \clef treble
      \global
      \relative c'' {
        g2. r4 e2 g4 r4 e4 d e a a g2 r4
        g2 e4 r4 c d2 r4 e f e r4 a d, e r4
        g2 g4 r4 a8 e f e16 d c4 e e2 d2 f4 d e r4
      }
    >>
    \new Staff <<
      \clef "treble_8"
      \global
      \relative c' {
        e4 d c r4 g c d r4 c a c r4 f d e r4
        e4 d c r4 a d b r4 b d c r4 e g g r4
        e2 e2~ e4 d c c b r4 b2 a4 g g r4
      }
    >>
    \new Staff <<
      \clef bass
      \global
      \relative f {
        c4 g' e r4 c a b r4 c d c r4 f g c, r4
        c4 g a r4 a8 g f4 g4 r4 e'4 d c b a g c r4
        r2 c4 b c4 r4 e8 c a g g4 r4 g' f8 g8 f4 g c, r4
      }
      \new FiguredBass{
        \figuremode {
          <5>4 <5> <6> <_> <5> <5> <6> <_> <5> <5> <5> <_> <5> <5> <5> <_>
          <5>4 <6> <5> <_> <5> <6> <5> <_> <5> <6> <5> <_> <5> <5> <5> <_>
          <_>4 <_> <5> <0> <6> <_> <6> <5> <6> <_> <5> <_> <5> <5> <5> <_>
        }
      }
      \new FiguredBass{
        \figuremode {
          <I>4 <V> <I> <_> <I> <VI> <V> <_> <I> <II> <I> <_><IV> <V> <I> <_>
          <I>4 <V> <VI> <_> <VI> <II> <V> <_> <III> <VII> <I> <_> <VI> <V> <I> <_>
          <_>2 <I>4 <_> <VI> <_> <I> <VI> <III> <_> <V> <_> <IV> <V> <I> <_>
        }
      }
    >>
  >>
  \header {
    title = ##f
    subtitle = ##f
    piece = "exercice 9.3"
  }
  \layout {}
  \midi {}
}
global = { \time 4/4 \key f \major }
\score {
  \new StaffGroup <<
    \new Staff <<
      \clef treble
      \global
      \relative c'' {
        f4\f (c d c8 bf a4 g f) r4 f'4 (c d c8 bf a4 g f2) \break
        a8\p (bf c4) c8 (d c bf) a (bf c4) c8 (d c bf) a4 g8\< g f (g a bf)\! c4\f (d8 e f2)
        \bar "|."
      }
    >>
    \new Staff <<
      \clef treble
      \global
      \relative c' {
        f4 a bf a8 g f4 e d e f4 r4 f4 c c8 d e d c bf c4
        f8 e e4 e8 f e d c4 c8 d e4 g f4 d8 d c4 f4 g4 f8 g a2
      }
    >>
    \new Staff <<
      \clef "treble_8"
      \global
      \relative c' {
        R1 c4 c8 bf a8 bf c4 c8 d e4 d a8 g f4 g a8 g a bf
        c bf a g g2 a4 a g4 c4 c bf8 bf a8 bf c d e4 d8 c c2
      }
    >>
    \new Staff <<
      \clef bass
      \global
      \relative f {
        r1 f4 c d c8 bf a4 g f8 g a bf c2 f2
        f,8 g a bf c2 f,8 g a bf c4 e f4 bf,8 g c2 c8 bf a g f2
      }
      \new FiguredBass{
        \figuremode {
          \bassFigureExtendersOn
          s1 <5>4 <5\!> <5\!> <5\!> <6> <6\! 4> <6\!> <5\!>8 <6\!> <6\! 4>4 <5> <5\!>2
          <5\!>4 <5\!> <5\!>2 <5\!>2 <5\!>4 <5> <5\!> <6> <6\! 4\!>2 <5\!> <5\!>
        }
      }
      \new FiguredBass{
        \figuremode {
          s1 <I>4 <V> <VI> <V> <I> <V> <VI> <III>8 <II> <I>4 <V> <I>2
          <I>4 <III> <V>2 <I>2 <V>2 <I>4 <II>4 <I>2 <V>2 <I>
        }
      }
    >>
  >>
  \header {
    title = ##f
    subtitle = ##f
    piece = "exercice 9.4"
  }
  \layout {}
  \midi {}
}
global = { \time 2/4 \key c \major }
DCfine = {
  \once \override Score.RehearsalMark #'break-visibility = #'#(#t #t #f)
  \mark \markup { \small "D.C. al fine" }
}
Fine = {
  \once \override Score.RehearsalMark #'break-visibility = #'#(#t #t #f)
  \mark \markup { \small \italic "fine" }
}

daCapoDynamic = {
  s2 s2 s2 s2 s8 \Fine s8
}
daCapoViolonUn = {
  c8~ c32 a c b c8~ c32 a c f f16. g32 f16. e32 e8 r8 c8~ c32 a c b c8~ c32 a b c d16. e32 f16. d32 c16. b32 b16. a32 a8 r8\fermata
}
daCapoViolonDeux = {
  e4 a32 f a gs a8~ a16. b32 a16. gs32 gs8 r8 e32 c e d e8  a32 f a gs a8 f16. e32 d16. f32 a16. gs32 gs8 a8 r8
}
daCapoVioloncelle = {
  a8 g? f e d4 e32 f e d e32 d c b a8 g? f e d8 d'8 e8 e,8 a8 r8\fermata
}
partTwoDynamics = {
  s4 s2 s2 s4
}
partTwoViolonUn = {
  r4 r4 c16 d32 c b16 c d16 e32 d c16 b a16 b32 a a16 gs a16. b32 c8 \breathe
}
partTwoViolonDeux = {
  r4 b,16c32 b a16 b e8 d16 e f8 e16 d c16 f e d c16. gs'32 a8
}
partTwoVioloncelle = {
  a16 (b32 a gs16 a) d8 c16 (b) a8 a' (a8) gs a16 d, c b a16 e a8 \breathe
}
partThreeDynamics = {
  s4 s2 s2 s2 \DCfine
}
partThreeViolonUn = {
  r4 r4 c16 d32 c b16 c d16 e32 d c16 b a16 b a gs a4 r4
}
partThreeViolonDeux = {
  r4 b,16c32 b a16 b e8 d16 e f8 e16 d c16 d c b c4 r4
}
partThreeVioloncelle = {
  a16 (b32 a gs16 a) d8 c16 (b) a8 a' (a8) gs a16 d,e e, a4 a32( b c \set stemRightBeamCount = #1 d \set stemLeftBeamCount = #1 e fs gs e)
}
\score {
  \new StaffGroup <<
    \new Staff <<
      \clef treble
      \global
      \new Dynamics {
        \daCapoDynamic
        \partTwoDynamics
        \partThreeDynamics
        \bar ":|."
      }
      \new Voice {
        \set Voice.midiInstrument = "acoustic guitar (steel)"
        \relative c'' { \voiceOne
          \daCapoViolonUn
          \partTwoViolonUn
          \partThreeViolonUn
        }
      }
      \new Voice {
        \set Voice.midiInstrument = "acoustic bass"
        \relative c' { \voiceTwo
          \daCapoViolonDeux
          \partTwoViolonDeux
          \partThreeViolonDeux
        }
      }
    >>
    \new Staff <<
      \clef bass
      \global
      \new Voice {
        \set Voice.midiInstrument = "electric bass (pick)"
        \relative f {
          \daCapoVioloncelle
          \partTwoVioloncelle
          \partThreeVioloncelle
        }
      }
      \tag #'visuel \new FiguredBass{
        \figuremode {
          <5>4 <5>4 <5>4 <_+>4 <5>4 <5>4 <5>4 <6 4>8 <_+>8 <5>4
          \bassFigureExtendersOn <0>8. <0>16 <6>8. <6>16 <5>8 <5> <6 4>8 <6\!>8 <5>16 <6> <6\!> <6+\!> <5> <_+> <5>8
          \bassFigureExtendersOn <0>8. <0>16 <6>8. <6>16 <5>8 <5>8 <6 4> <6\!> <5>16 <6> <6\! 4> <_+\!> <5>4 <0>
        }
      }
      \tag #'visuel \new FiguredBass{
        \figuremode {
          <I>4 <VI>4 <IV>4 <V>4 <I>4 <VI>4 <IV>4 <I>8 <V>8 <I>4
          <_>4 <II>4 <I>4 <IV>8 <V>8 <I>16 <II> <I> <V> <I> <V> <I>8
          <_>4 <II>4 <I>4 <IV>8 <V> <I>16 <II> <I> <V> <I>4 <_>
        }
      }
    >>
  >>
  \header {
    title = ##f
    subtitle = ##f
    piece = "exercice 9.5"
  }
  \layout {}
  \midi {
    % Move MIDI performer from Staff level to Voice
    % Get a MIDI channel per Voice instead of per Staff
    \context { \Staff \remove "Staff_performer" }
    \context { \Voice \consists "Staff_performer" }
  }
}
%}
global = { \time 6/8 \key a \major }
\score {
  \new StaffGroup <<
    \new Staff <<
      \clef treble
      \global
      \relative c'' {
        a8\mf\<( b cs d cs b a\!\> gs a gs4 b8\! a2.~ a4.) e8( e' d cs\< b cs\! fs4\f) b,8 b( cs b a fs fs') \break
        e( gs cs,) cs( fs cs) b\>( fs' b,) b( cs b\!) a4. gs4\startTrillSpan( fs16 gs\stopTrillSpan) a8\mf( b cs d cs b a gs a\> gs4 a8\! a2.\p)
        \bar "|."
      }
    >>
    \new Staff <<
      \clef treble
      \global
      \relative c' {
        e4. fs4. e2. e8 d e fs8 e d e4. e8 gs fs e8 d e fs4. e4 d8 cs4. cs4 e8 fs4. fs4 d8 e4. e8 fs e e4. e4. d8 e d e2. e2.
      }
    >>
    \new Staff <<
      \clef "treble_8"
      \global
      \relative c' {
        r2. cs8 d cs b a b cs4. r4. cs8 d cs b4. cs4. b4 fs8 gs4. a4 fs8 gs4. fs4 a8 b4 a8 gs8 a gs a4 cs8 b4. cs4. a4 b8 cs8 d cs b a8 b cs2.
      }
    >>
    \new Staff <<
      \clef bass
      \global
      \relative f {
        a4. a4. a4. e4. a,8 b cs d cs b a gs a gs4 b8 a4. d4. e4. fs8 e d cs4 b8 a8 b cs d4 fs8 e4 d8 cs8 d4 e4. a4 gs8 fs4. e4. e,4. a2.

      }
      \new FiguredBass{
        \figuremode {
          <5>4. <6 4> <5> <5> <5>4. <5> <5> <6> <5> <6> <5> <5>
          <5> <6> <6> <5> <6> <5> <5> <6> <6 4> <5> <5>2.
        }
      }
      \new FiguredBass{
        \figuremode {
          <I>4. <IV> <I> <V> <I> <IV> <I> <V> <I> <II> <V> <VI>
          <III> <VI> <II> <V> <I> <V> <I> <IV> <I> <V> <I>2.
        }
      }
    >>
  >>
  \header {
    title = ##f
    subtitle = ##f
    piece = "exercice 9.6"
  }
  \layout {}
  \midi {
    % Move MIDI performer from Staff level to Voice
    % Get a MIDI channel per Voice instead of per Staff
    \context { \Staff \remove "Staff_performer" }
    \context { \Voice \consists "Staff_performer" }
  }
}
global = { \time 2/2 \key a \minor }
\score {
  \new PianoStaff <<
    \new Staff <<
      \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
      \set Staff.explicitClefVisibility = #end-of-line-invisible
      \override Staff.TimeSignature.break-visibility = #end-of-line-invisible
      \clef treble
      \global
      \new Voice = "soprane" {
        \relative c'' {
          \mark "La mineur"
          a1 f' d c e b d a b a \break
          r2 e2 d c d f e fs gs e d e fs gs a c b gs a1
          \bar "|."
        }
      }
    >>
    \new Staff <<
      \set Staff.explicitKeySignatureVisibility = #end-of-line-invisible
      \set Staff.explicitClefVisibility = #end-of-line-invisible
      \override Staff.TimeSignature.break-visibility = #end-of-line-invisible
      \clef bass
      \global
      \new Voice = "bass" {
        \relative f, {
          r2 a2 d e f g a gs a a, gs a b c d fs gs e a1
          a,1 f' d c e b d a b a
        }
      }
      \new FiguredBass {
        \figuremode {
          s2 <5>2 <5> <P> <6> <P> <5> <B> <5> <_> <6> <P> <5> <P> <5> <_> <5>2 <_> <5>1
          <5>1 <6>2 <P> <5> <_> <5> <P> <5> <P> <5> <P> <5> <P> <5> <_> <6> <_> <5>1
        }
      }
      \new FiguredBass {
        \figuremode {
          s2 <I>2 <IV>1 <IV> <I> <I> <V> <II> <IV> <V> <I>
          <I>1 <IV> <IV> <III> <V> <II> <IV> <I> <VII> <I>
        }
      }
    >>
  >>
  \header {
    title = ##f
    subtitle = ##f
    piece = "exercice 9.7"
  }
  \layout {}
  \midi {
    % Move MIDI performer from Staff level to Voice
    % Get a MIDI channel per Voice instead of per Staff
    \context { \Staff \remove "Staff_performer" }
    \context { \Voice \consists "Staff_performer" }
  }
}