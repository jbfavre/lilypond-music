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
%#(set-global-staff-size 18)
%#(set-default-paper-size "a4landscape")

global = { \time 4/4 \key g \major }
\score {
  \header {
    title = ##f
    subtitle = ##f
    piece = "exercice 9.1"
  }
  \new PianoStaff <<
    \new Staff <<
      \clef treble
      \global
      \new Voice = "soprane" {  \voiceOne
        \relative c'' {
          s1 s1 r4 r4 g4 b d4. e8 d c b g d4 s2. s4
          \bar "|."
        }
      }
      \new Voice = "alto" {
        \relative c'' {
          \oneVoice r4 r4 \voiceTwo g4 b d4. e8 d c b g d4 s2. s1 s1 s4
        }
      }
    >>
    \new Staff <<
      \clef bass
      \global
      \new Voice = "tenor" {
        \relative f {
          r1 r4 r4 \voiceOne g4 b d4. e8 d c b g d4 s2. s1 s4
        }
      }
      \new Voice = "bass" { \voiceTwo
        \relative f {
          s1 s2 r4 r4 r1 r4 r4 g,4 b d4. e8 d c b g d4
        }
      }
    >>
  >>
}
global = { \time 3/4 \key c \major }
\score {
  \header {
    title = ##f
    subtitle = ##f
    piece = "exercice 9.2"
  }
  \new StaffGroup <<
    \new Staff <<
      \clef treble
      \global
      \relative c'' {
        r4 r4 r4 s2.*3
        s2.*5
        \bar "|."
      }
    >>
    \new Staff <<
      \clef treble
      \global
      \relative c'' {
        r4 r4 r4 s2.*3
        s2.*5
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
}
global = { \time 4/4 \key c \major }
\score {
  \header {
    title = ##f
    subtitle = ##f
    piece = "exercice 9.3"
  }
  \new StaffGroup <<
    \new Staff <<
      \clef treble
      \global
      \relative c'' {
        c4 b c r4 e8 c a g g4 r4 g4 f g r4 c8 a b c c4 r4 \break
        c4 b c r4 e8 c a g g4 r4 g4 f g r4 c8 a b c c4 r4 \break
        c4 b c r4 e8 c a g g4 r4 g4 f g r4 c8 a b c c4 r4 \break
        c4 b c r4 e8 c a g g4 r4 g4 f g r4 c8 a b c c4 r4
        \bar "|."
      }
    >>
    \new Staff <<
      \clef treble
      \global
      \relative c'' {
        s1*4
        s1*4
        s1*4
        s1*4
      }
    >>
    \new Staff <<
      \clef "treble_8"
      \global
      \relative c'' {
        s1*4
        s1*4
        s1*4
        s1*4
      }
    >>
    \new Staff <<
      \clef bass
      \global
      \relative f {
        s1*4
        s1*4
        s1*4
        s1*4
      }
      \new FiguredBass{
        \figuremode {
          
        }
      }
      \new FiguredBass{
        \figuremode {
          
        }
      }
    >>
  >>
}
global = { \time 4/4 \key f \major }
\score {
  \header {
    title = ##f
    subtitle = ##f
    piece = "exercice 9.4"
  }
  \new StaffGroup <<
    \new Staff <<
      \clef treble
      \global
      \relative c'' {
        f4\f (c d c8 bf a4 g f) r4 f'4 (c d c8 bf a4 g f2) a8\p (bf c4) c8 (d c bf) a (bf c4) c8 (d c bf) a4 g8\< g f (g a bf)\! c4\f (d8 e f2)
        \bar "|."
      }
    >>
    \new Staff <<
      \clef treble
      \global
      \relative c'' {
        r1*4
        r1*4
      }
    >>
    \new Staff <<
      \clef "treble_8"
      \global
      \relative c'' {
        r1*4
        r1*4
      }
    >>
    \new Staff <<
      \clef bass
      \global
      \relative f {
        r1*4
        r1*4
      }
      \new FiguredBass{
        \figuremode {
          
        }
      }
      \new FiguredBass{
        \figuremode {
          
        }
      }
    >>
  >>
}
global = { \time 2/4 \key c \major }
\score {
  \header {
    title = ##f
    subtitle = ##f
    piece = "exercice 9.5"
  }
  \new StaffGroup <<
    \new Staff <<
      \clef treble
      \global
      \relative c'' {
        c8 (c32) a c b c8 (c32) a c f f16. g32 f16. e32 e8 r8 c8 (c32) a c b c8 (c32) a b c \break
        d16. e32 f16. d32 c16. b32 b16. a32 a8 r8\fermata r4 s2*2
        s2*4
        \bar "|."
      }
    >>
    \new Staff <<
      \clef bass
      \global
      \relative f, {
        s2*4 a8 r8\fermata a16 (b32 a gs16 a) d8 c16 (b) a8 a' (a8) gs a16 d, c b
        a e a8 \breathe a16 (b32 a gs16 a) d8 c16 (b) a8 a' (a8) gs a16 d,e e, a4 a32( b c \set stemRightBeamCount = #1 d \set stemLeftBeamCount = #1 e fs gs e)
      }
      \new FiguredBass{
        \figuremode {
          
          <_>2 <_>2 <_>2
          <_>2 <_>4 \bassFigureExtendersOn <0>8. <0>16 <6>8. <6>16 <5>8 <5> <6 4>8 <6\!>8 <5>16 <6> <6\!> <6+\!>
          <5> <_+> <5>8 <0>8. <0>16 <6>8. <6>16 <5>8 <5>8 <6 4> <6\!> <5>16 <6> <6\! 4> <_+\!> <5>4 <0>
        }
      }
      \new FiguredBass{
        \figuremode {
          
        }
      }
    >>
  >>
}
global = { \time 6/8 \key a \major }
\score {
  \header {
    title = ##f
    subtitle = ##f
    piece = "exercice 9.6"
  }
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
      \relative c'' {
        s2.*6
        s2.*6
      }
    >>
    \new Staff <<
      \clef "treble_8"
      \global
      \relative c'' {
        s2.*6
        s2.*6
      }
    >>
    \new Staff <<
      \clef bass
      \global
      \relative f {
        s2.*6
        s2.*6
      }
      \new FiguredBass{
        \figuremode {
          
        }
      }
      \new FiguredBass{
        \figuremode {
          
        }
      }
    >>
  >>
}
global = { \time 2/2 \key a \minor}
\score {
  \header {
    title = ##f
    subtitle = ##f
    piece = "exercice 9.7"
  }
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
          r2 s2 s1*9
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
          r2 s2 s1*9
          a1 f' d c e b d a b a
        }
      }
    >>
  >>
}
\layout {
  \context {
    \Score
    \override RehearsalMark.self-alignment-X =
      #(lambda (grob)
         (let* ((break-dir (ly:item-break-dir grob)))
           (case break-dir
             ((-1) RIGHT)  ;; end-of-line   -> right aligned
             ((1) LEFT)    ;; begin-of-line -> left-aligned
             (else CENTER) ;; otherwise     -> center-aligned
             )))
    \omit BarNumber
  }
ragged-last = ##f
}