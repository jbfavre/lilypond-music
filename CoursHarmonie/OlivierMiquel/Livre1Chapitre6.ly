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
  subtitle = "Livre 1, chapitre 6"
  tagline = ""
}
\paper {
  #(include-special-characters)
  print-all-headers = ##t
  max-systems-per-page = 10
}
%#(set-global-staff-size 18)
%#(set-default-paper-size "a4landscape")

\score {
  \header {
    title = ##f
    subtitle = ##f
    piece = "exercice 6.2"
  }
  \new StaffGroup <<
    \new Staff <<
      \clef treble \time 6/8 \key a \minor
      \new Voice = "rhythm" { \partial 8 s8
        \repeat unfold 4 { s2. } s8^\markup { "demi cadence" } s8 s2 \break
        s8^\markup {  "cadence plagale" } s8 s2
        s4. s8 s8^\markup { "cadence rompue" } s8
        \repeat unfold 2 { s2. }
        s8^\markup {  "cadence plagale" } s8 s2 \break
        s2.
        s4.^\markup { "demi cadence" } s4.
        s2.^"T"
        s4. s4.^\markup { "cadence parfaite" }
        s4. s4.^\markup {  "cadence plagale" }
      }
      \new Voice = "melody" {
        \relative c'' {
          \partial 8 a8\mf
          a4 e'8 d4 c8 b4 e8 a,4 gs8 gs f' (e d c b c4 d8 e) r8 a\p a4\< (gs8)\> r8\! r8 f8
          f4 (e8) r8 r8 d8 d (c b) a4 gs8 a4. r8 r8 a'8\mf a4 (gs8) r8 r8 f8 f4 (e8) r8 d8
          d e c a a4 b8 a4. (gs4. a8) e' (c a4) b8\dimTextDim a4.\> gs4. a2.\! (a2.) \fermata
        }
      }
    >>
    \new Staff <<
      \clef alto \time 6/8 \key a \minor
      \new Voice = "alto" {
        \relative c' {
          \partial 8 s8 \dynamicNeutral
          c4\mf c8 f4 e8 e4 e8 c4 e8 e a a d, e e e4 a8 gs r8 r8\p c4\< (b8)\> r4\! r8
          d,4 (c8) r4 r8 a'4 (f8) c4 b8 a4. r8 r8 c'8\mf c4 (b8) r8 r8 d,8 d4 (c8) r8 f8
          f a e c f4 f8 c4. b4. e4 e8 f4 f8 c4. b4. c4. <a f'>4\p <a f'>8 <c e>2.
        }
      }
    >>
    \new Staff <<
      \clef bass \time 6/8 \key a \minor
      \new Voice = "bass" {        \relative f {
          \partial 8 s8 \dynamicUp
          a4 a8 a4 a8 gs4 gs8 a4 e8 e'8 (d c) b (a gs) a4 f8 e r8 r8 e4. r4 r8
          a4. r4 r8 f4 d8 e4 e,8\< f4-> f8 a\! c f e4 e,8 a4. (a4.) b4 b8 c4 c8 d4 d8 e4. e,4. c'4. d4 d8 e4. e,4. a4. d4 d8 a2.
        }
      }
      \new FiguredBass { \figuremode { \partial 8 <_>8
          <I>4. <IV>4 <I>8
          <V>4. <I>4 <V>8
          <_>8 <IV> <I> <II> <I> <V>
          <I>4 <IV>8 <V> <_>4
          <I>4 <V>8 <_>4.
          <IV>4 <I>8 <_>4.
          <IV>8 <VI> <II> <I>4 <V>8
          <VI>2.
          <I>4 <V>8 <_>4 <IV>8
          <IV>4 <I>8 <_>8 <VI>4
          <I>8 <III>8 <I>8 <IV>4 <II>8
          <I>4. <V>4.
          <I>4. <IV>4 <II>8
          <I>4. <V>4.
          <I>4. <IV>4.
          <I>2.
        }
      }
      \new FiguredBass { \figuremode { \partial 8 <_>8
          \bassFigureExtendersOn
          <5>4 <5>8 <6 4>4 <5>8
          <6>4 <6>8 <5>4 <_+>8
          <_+>8 <5> <6> <5> <5\!> <6 4>
          <5>4 <6>8 <_+> <_>4
          <6 4>4 <_+>8 <_>4.
          <6 4>4 <5>8 <_>4.
          <6>8 <5>8 <6> <6\! 4>4 <5>8
          <5\!>2.
          <6 4>4 <5>8 <_>4 <6 4>8
          <6\! 4\!>4 <5>8 <_>8 <5>4
          <6>8 <5> <6> <5>4 <6>8
          <6\! 4>4. <5>4.
          <6>4. <5>4 <6>8
          <6\! 4>4. <5>4.
          <5\!>4. <5\!>4.
          <5\!>2.
        }
      }
    >>
  >>
}

\score {
  \header {
    title = ##f
    subtitle = ##f
    piece = "exercice 6.1"
  }
  \new Staff
  <<
    \clef treble \time 4/4 \key d \minor
    \new Voice = "rhythm" {
      \partial 8 s8
      s1
      s2 s8 s8^\markup { \column {\center-align { "A" "demi cadence" }}} s8 s8
      s1 s4 s4^\markup { \column {\center-align { "B" "imparfaite" }}} s2
      s2. s4^\markup { \column {\center-align { "C" "parfaite" }}}
      s2 s4 s4^\markup { \column {\center-align { "D" "plagale" }}}
      s1
    }
    \new Voice = "melody" {
      \relative c'' {
        \partial 8 a8
        d4 (e f4.) g8 f (e) f d d4 (cs8) \breathe a8 b4 (cs d8) a' g f \break
        f4 (e d) \breathe \tuplet 3/2 {a'8 (g f) } bf (a g f f4 e d2) d4 (bf d1) \bar "|."
      }
    }
    \new FiguredBass {
      \figuremode {
        \partial 8 <_>8
        <_>1
        <_>2 <I>4 <V>8 <_>8
        <_>1
        <I>4 <V> <I> <_>
        <_>4 <IV>4 <I> <V>
        <I>2 <I>4 <IV>
        <I>1
      }
    }
    \new FiguredBass {
      \figuremode {
        \partial 8 <_>8
        <5>1
        <5>2 <5>4 <_+>8 <_>8
        <_>1
        <6 4>4 <5> <6> <_>
        <_>4 <6> <6 4> <5>
        <5>2 <5>4 <6 4>
        <5>1
      }
    }
  >>
}

\score {
  \header {
    title = ##f
    subtitle = ##f
    piece = "exercice 6.3"
  }
  \new StaffGroup <<
    \new Staff <<
      \clef treble \time 3/2 \key f \minor
      \new Voice = "melody" {
        \relative c'' {
          \repeat unfold 11 { s1. }
        }
      }
    >>
    \new Staff <<
      \clef bass \time 3/2 \key f \minor
      \new Voice = "bass" {
        \relative f {
          f2 ef df c1. bf2 bf' af g f e f1.~ \break
          f1 bf,2 c1. af2 bf c f1. bf,1. f1.
        }
      }
      \new FiguredBass { \figuremode { \bassFigureExtendersOn
          <5>2 <6 4> <5> <6 4> <5 _!> <6 4> <6\!> <6> <6\! 4> <6! 3> <5> <6> <5>1.
          <6 4>2 <6\!> <6\!> <6\! 4>1 <_!>2 <6> <6\!> <_!> <5>1. <5\!>1. <5\!>1.
        }
      }
    >>
  >>
}

\score {
  \header {
    title = ##f
    subtitle = ##f
    piece = "exercice 6.4-A"
  }
  \new StaffGroup <<
    \new Staff <<
      \clef treble \time 2/4 \key d \minor
      \new Voice = "melody" {
        \relative c'' {
          \repeat unfold 11 { s2 }
        }
      }
    >>
    \new Staff <<
      \clef bass \time 2/4 \key d \minor
      \new Voice = "bass" {
        \relative f {
          d4 cs8 d bf4 a8 cs d4 e8 f cs4 d g, a bf r4 \break
          a8 bf a g f g a cs d g, a a d2 d,4 r4
        }
      }
      \new FiguredBass { \figuremode { \bassFigureExtendersOn
          <5>4 <6>8 <5> <5\!>8 <6> <_+>8 <_+>8 <5>4 <5/>8 <6> <6\!>4 <5> <6> <6\! 4>8 <5 _+> <5\!>4 <_>4
          <0>8 <0><0><0><6> <5> <_+> <5/> <5> <6> <6\! 4> <_+> <5>8 <6 4> <5> <6 4> <_+>4 <_>
        }
      }
    >>
  >>
}

\score {
  \header {
    title = ##f
    subtitle = ##f
    piece = "exercice 6.4-B"
  }
  \new StaffGroup <<
    \new Staff <<
      \clef treble \time 6/8 \key g \major
      \new Voice = "melody" {
        \relative c'' {
          \repeat unfold 7 { s2. }
        }
      }
    >>
    \new Staff <<
      \clef alto \time 6/8 \key g \major
      \new Voice = "alto" {
        \relative c' {
          \repeat unfold 7 { s2. }
        }
      }
    >>
    \new Staff <<
      \clef bass \time 6/8 \key g \major
      \new Voice = "bass" {
        \relative f {
          g8 e c d r8 d e e fs g r8 d a g a c4 c8 \break
          d4 r8 d8 c b a4. g8 c d e r8 fs8 g c,d g,4. (g8) r8 r8

        }
      }
      \new FiguredBass { \figuremode { \bassFigureExtendersOn
          <5>8 <5\!> <6> <5> <5> <5\!> <5\!> <6 4> <5/> <5> <_> <5> <5\!> <6> <5> <5\!>4 <6>8
          <6\! 4>8 <5>8 <_>8 <0>8 <0> <0> <5> <6 4> <5> <5\!> <6> <5> <5\!> <_> <6> <5> <6> <5> <5\!>4 <6 4>8 <5>8 <_>4
        }
      }
    >>
  >>
}

\score {
  \header {
    title = ##f
    subtitle = ##f
    piece = "exercice 6.5-A"
  }
  \new StaffGroup <<
    \new Staff <<
      \clef treble \time 4/4 \key c \major
      \new Voice = "melody" {
        \relative c'' {
          \mark "Allegro"
          g'4--\f e-- c4.-- b16 (c d c b c d c b c) d8-. b-. g4 \break
          \repeat unfold 2 { s1 }
        }
      }
    >>
  >>
}
\score {
  \header {
    title = ##f
    subtitle = ##f
    piece = "exercice 6.5-B"
  }
  \new StaffGroup <<
    \new Staff <<
      \clef treble \time 2/4 \key c \major
      \new Voice = "melody" {
        \relative c'' {
          \mark "Allegretto"
          a16-.\p a (e) a-. b-. b (e,) b'-. c-. b (a) e'-. b4 \break
          \repeat unfold 2 { s2 }
        }
      }
    >>
  >>
}
\score {
  \header {
    title = ##f
    subtitle = ##f
    piece = "exercice 6.5-C"
  }
  \new StaffGroup <<
    \new Staff <<
      \clef treble \time 3/8 \key bf \major
      \new Voice = "melody" {
        \relative c'' {
          \mark "Tranquillo"
          \partial 8 d8\mf f,4 (g8 ef'4) c8 (a g' f) f16 (ef d8) r8 \break
          \repeat unfold 4 { s4. }
        }
      }
    >>
  >>
}
\score {
  \header {
    title = ##f
    subtitle = ##f
    piece = "exercice 6.5-D"
  }
  \new StaffGroup <<
    \new Staff <<
      \clef treble \time 6/8 \key d \minor
      \new Voice = "melody" {
        \relative c' {
          \mark "Largo"
          d4\p a'8 d8. cs16 d8 bf8 a g a4 f8 g bf d f8. e16 f8 d4 e8 cs4. \break
          \repeat unfold 4 { s2. }
        }
      }
    >>
  >>
}
\score {
  \header {
    title = ##f
    subtitle = ##f
    piece = "exercice 6.5-E"
  }
  \new StaffGroup <<
    \new Staff <<
      \clef treble \time 4/4 \key a \major
      \new Voice = "melody" {
        \relative c'' {
          \mark "Allegro deciso"
          a4.->\f gs16 (b) a8-> cs-> r4 fs8-.\p e-. d-. cs-. b16 (cs d8-.) e,8-> r8 \break
          \repeat unfold 2 { s1 }
        }
      }
    >>
  >>
}

cantusFirmus = {
  c1 a b d e f d c
}
mesureNumber = 8
\score {
  \header {
    title = ##f
    subtitle = ##f
    piece = "exercice 6.7-A"
    opus = "Mode majeur"
  }
  \new StaffGroup <<
    \new Staff <<
      \clef treble \time 2/2 \key c \major
      \new Voice = "melody" {
        \relative c'' {
          \cantusFirmus \break
          \repeat unfold \mesureNumber { s1 } \break
          \repeat unfold \mesureNumber { s1 } \break
        }
      }
    >>
    \new Staff <<
      \clef alto \time 2/2 \key c \major
      \new Voice = "alto" {
        \relative c' {
          \repeat unfold \mesureNumber { s1 }
          \cantusFirmus \break
          \repeat unfold \mesureNumber { s1 } \break
        }
      }
    >>
    \new Staff <<
      \clef bass \time 2/2 \key c \major
      \new Voice = "bass" {
        \relative f {
          \repeat unfold \mesureNumber { s1 }
          \repeat unfold \mesureNumber { s1 }
          \cantusFirmus
        }
      }
      \new FiguredBass { \figuremode { \bassFigureExtendersOn
        }
      }
    >>
  >>
}

cantusFirmus = {
  d1 f g a e g f e c d
}
mesureNumber = 10
\score {
  \header {
    title = ##f
    subtitle = ##f
    piece = "exercice 6.7-B"
    opus = "Mode de Ré"
  }
  \new StaffGroup <<
    \new Staff <<
      \clef treble \time 2/2 \key c \major
      \new Voice = "melody" {
        \relative c' {
          \cantusFirmus \break
          \repeat unfold \mesureNumber { s1 } \break
          \repeat unfold \mesureNumber { s1 } \break
        }
      }
    >>
    \new Staff <<
      \clef alto \time 2/2 \key c \major
      \new Voice = "alto" {
        \relative c' {
          \repeat unfold \mesureNumber { s1 }
          \cantusFirmus
          \repeat unfold \mesureNumber { s1 }
        }
      }
    >>
    \new Staff <<
      \clef bass \time 2/2 \key c \major
      \new Voice = "bass" {
        \relative f {
          \repeat unfold \mesureNumber { s1 }
          \repeat unfold \mesureNumber { s1 }
          \cantusFirmus
        }
      }
      \new FiguredBass { \figuremode { \bassFigureExtendersOn
        }
      }
    >>
  >>
}

cantusFirmus = {
  e1 d e c b g a b g fs e
}
mesureNumber = 11
\score {
  \header {
    title = ##f
    subtitle = ##f
    piece = "exercice 6.7-C"
    opus = "Mode de La"
  }
  \new StaffGroup <<
    \new Staff <<
      \clef treble \time 2/2 \key g \major
      \new Voice = "melody" {
        \relative c'' {
          \cantusFirmus \break
          \repeat unfold \mesureNumber { s1 } \break
          \repeat unfold \mesureNumber { s1 } \break
        }
      }
    >>
    \new Staff <<
      \clef alto \time 2/2 \key g \major
      \new Voice = "alto" {
        \relative c' {
          \repeat unfold \mesureNumber { s1 }
          \cantusFirmus
          \repeat unfold \mesureNumber { s1 }
        }
      }
    >>
    \new Staff <<
      \clef bass \time 2/2 \key g \major
      \new Voice = "bass" {
        \relative f {
          \repeat unfold \mesureNumber { s1 }
          \repeat unfold \mesureNumber { s1 }
          \cantusFirmus
        }
      }
      \new FiguredBass { \figuremode { \bassFigureExtendersOn
        }
      }
    >>
  >>
}

cantusFirmus = {
  a1 e' d c f e b d e c b e a,
}
mesureNumber = 13
\score {
  \header {
    title = ##f
    subtitle = ##f
    piece = "exercice 6.7-D"
    opus = "Mode de La ou mode mineur"
  }
  \new StaffGroup <<
    \new Staff <<
      \clef treble \time 2/2 \key c \major
      \new Voice = "melody" {
        \relative c'' {
          \cantusFirmus \break
          \repeat unfold \mesureNumber { s1 } \break
          \repeat unfold \mesureNumber { s1 } \break
        }
      }
    >>
    \new Staff <<
      \clef alto \time 2/2 \key c \major
      \new Voice = "alto" {
        \relative c' {
          \repeat unfold \mesureNumber { s1 }
          \cantusFirmus
          \repeat unfold \mesureNumber { s1 }
        }
      }
    >>
    \new Staff <<
      \clef bass \time 2/2 \key c \major
      \new Voice = "bass" {
        \relative f {
          \repeat unfold \mesureNumber { s1 }
          \repeat unfold \mesureNumber { s1 }
          \cantusFirmus
        }
      }
      \new FiguredBass { \figuremode { \bassFigureExtendersOn
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