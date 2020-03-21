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
  subtitle = "Livre 1, chapitre 7"
  tagline = ""
}
\paper {
  #(include-special-characters)
  print-all-headers = ##t
  max-systems-per-page = 10
}
#(set-global-staff-size 22)
%#(set-default-paper-size "a4landscape")

%{
\score {
  \header {
    title = ##f
    subtitle = ##f
    piece = "exercice 7.1"
  }
  \new StaffGroup <<
    \new Staff <<
      \clef treble \time 3/4 \key c \major
      \new Voice = "melody" {
        \relative c'' {
          c4 a b c e f d e d c2. \bar "|."
        }
      }
    >>
    \new Staff <<
      \clef bass \time 3/4 \key c \major
      \new Voice = "bass" {
        \relative f {
          \repeat unfold 4 { s2. }
        }
      }
      \new FiguredBass { \figuremode {
          <_>4
        }
      }
      \new FiguredBass { \figuremode {
          \bassFigureExtendersOn
          <_>4
        }
      }
    >>
  >>
}

\score {
  \header {
    title = ##f
    subtitle = ##f
    piece = "exercice 7.2"
  }
  \new StaffGroup <<
    \new Staff <<
      \clef treble \time 3/4 \key f \major
      \new Voice = "melody" {
        \relative c'' {
          f2 (e4 d2 d4 c2.) bf2 (bf4 a2 g4 f2.) \bar "|."
        }
      }
    >>
    \new Staff <<
      \clef bass \time 3/4 \key f \major
      \new Voice = "bass" {
        \relative f {
          \repeat unfold 6 { s2. }
        }
      }
      \new FiguredBass { \figuremode {
          <_>4
        }
      }
      \new FiguredBass { \figuremode {
          \bassFigureExtendersOn
          <_>4
        }
      }
    >>
  >>
}

\score {
  \header {
    title = ##f
    subtitle = ##f
    piece = "exercice 7.3"
  }
  \new StaffGroup <<
    \new Staff <<
      \clef treble \time 2/4 \key c \major
      \new Voice = "melody" {
        \relative c'' {
          c4 (g' f d c d d2) f4 (d e2 d4 b c2) \bar "|."
        }
      }
    >>
    \new Staff <<
      \clef bass \time 2/4 \key c \major
      \new Voice = "bass" {
        \relative f {
          \repeat unfold 8 { s2 }
        }
      }
      \new FiguredBass { \figuremode {
          <_>4
        }
      }
      \new FiguredBass { \figuremode {
          \bassFigureExtendersOn
          <_>4
        }
      }
    >>
  >>
}

\score {
  \header {
    title = ##f
    subtitle = ##f
    piece = "exercice 7.4"
  }
  \new StaffGroup <<
    \new Staff <<
      \clef treble \time 3/4 \key g \major
      \new Voice = "melody" {
        \relative c'' {
          b2 (d4 c2 b4 c2 a4 g2.) b4 (g d') c (a e') \break
          d2 (e4 c b c b2 a4 g2.) e2 e4 g2. \bar "|."
        }
      }
    >>
    \new Staff <<
      \clef treble \time 3/4 \key g \major
      \new Voice = "alto" {
        \relative c' {
          \repeat unfold 12 { s2. }
        }
      }
    >>
    \new Staff <<
      \clef "treble_8" \time 3/4 \key g \major
      \new Voice = "tenor" {
        \relative c' {
          \repeat unfold 12 { s2. }
        }
      }
    >>
    \new Staff <<
      \clef bass \time 3/4 \key g \major
      \new Voice = "bass" {
        \relative f {
          \repeat unfold 12 { s2. }
        }
      }
      \new FiguredBass { \figuremode {
          <_>4
        }
      }
      \new FiguredBass { \figuremode {
          \bassFigureExtendersOn
          <_>4
        }
      }
    >>
  >>
}

\score {
  \header {
    title = ##f
    subtitle = ##f
    piece = "exercice 7.5"
  }
  \new StaffGroup <<
    \new Staff <<
      \clef treble \time 2/2 \key b \minor
      \new Voice = "melody" {
        \relative c'' {
          \partial 4 as4
          b2 e fs4 (cs d2 as) b4-- (b-- fs1) \breathe \break
          fs'4 ( b, g'2) fs4 (cs d2) b2 as b r4
        }
      }
    >>
    \new Staff <<
      \clef bass \time 2/2 \key b \minor
      \new Voice = "bass" {
        \relative f {
          \partial 4 s4
          \repeat unfold 7 { s1 }
          s2. \bar "|."
        }
      }
      \new FiguredBass { \figuremode {
          <_>4
        }
      }
      \new FiguredBass { \figuremode {
          \bassFigureExtendersOn
          <_>4
        }
      }
    >>
  >>
}

\score {
  \header {
    title = ##f
    subtitle = ##f
    piece = "exercice 7.6"
  }
  \new StaffGroup <<
    \new Staff <<
      \clef treble \time 6/8 \key c \major
      \new Voice = "melody" {
        \relative c'' {
          a4. a4 a8 a4. a4 a8 c4. (b4) b8 a4. r4 r8 e'4 e8 e4 e8 d4 (c8) b4. \break
          gs4 (b8) a4 a8 gs4. r4 r8 a4. a4 a8 a4. a4 a8 c4. (b4) b8 a4. r4 r8 \break
          f'4. (e4 b8 c4) r8 d4 (b8 a4) r8 b4 b8 a4. gs4 gs8 a4. a4 a8 a2. \bar "|."
        }
      }
    >>
    \new Staff <<
      \clef treble \time 6/8 \key c \major
      \new Voice = "alto" {
        \relative c' {
          \repeat unfold 18 { s2. }
        }
      }
    >>
    \new Staff <<
      \clef "treble_8" \time 6/8 \key c \major
      \new Voice = "tenor" {
        \relative c' {
          \repeat unfold 18 { s2. }
        }
      }
    >>
    \new Staff <<
      \clef bass \time 3/4 \key c \major
      \new Voice = "bass" {
        \relative f {
          \repeat unfold 18 { s2. }
        }
      }
      \new FiguredBass { \figuremode {
          <_>4
        }
      }
      \new FiguredBass { \figuremode {
          \bassFigureExtendersOn
          <_>4
        }
      }
    >>
  >>
}
\score {
  \header {
    title = ##f
    subtitle = ##f
    piece = "exercice 7.7"
  }
  \new StaffGroup <<
    \new Staff <<
      \clef treble \time 6/8 \key b \minor
      \new Voice = "violon1" {
        \relative c' {
          \override NoteHead.color = #grey
          \override Stem.color = #grey
          \override Beam.color = #grey
          \override Accidental.color = #grey
          fs8 b as b fs r8 b as b cs fs, r8 cs' d fs d4 r8 d fs e fs cs r8
          e cs fs g4 r8 d8 e d cs fs e cs d d cs4 b8 as b d cs4.
        }
      }
    >>
    \new Staff <<
      \clef treble \time 6/8 \key b \minor
      \new Voice = "violon2" {
        \relative c' {
          \override NoteHead.color = #grey
          \override Stem.color = #grey
          \override Beam.color = #grey
          \override Accidental.color = #grey
          d8 fs e fs b, r8 fs' e d fs cs r8 as' b cs fs,4 r8 fs cs' b as4 r8 b8 fs d' b4 r8 a! b fs as b4 as8 b fs as!4 fs8 fs4 fs8 as4.
        }
      }
    >>
    \new Staff <<
      \clef bass \time 6/8 \key b \minor
      \new Voice = "bass" {
        \relative f {
          b8 b,8 cs d d, r8 d' cs b as as' r8 fs b as b b, r8 b' a g fs fs, r8 g' as b e, e, r8 fs' g b fs d g fs d b fs' e d cs d b fs'4. \bar "|."
        }
      }
      \new FiguredBass { \figuremode {
        }
      }
      \new FiguredBass { \figuremode {
          \bassFigureExtendersOn
          <5>8 <5> <6+> <6> <6> <_> <6> <6+> <5> <6> <6> <_> <_+> <5> <6> <5> <5> <_> <5> <6> <6\!> <_+> <_+>  <_>
          <6> <6\!> <5> <5\!> <5> <_> <6 _!> <6\!> <5> <_+> <6> <6\!> <_+> <6> <6> <_+> <6 4+> <6\!> <6+> <6> <6> <_+>4.
        }
      }
    >>
  >>
}
\score {
  \header {
    title = ##f
    subtitle = ##f
    piece = "exercice 7.8"
  }
  \new ChoirStaff <<
    \new Staff <<
      \clef treble \time 4/4 \key d \major
      \new Voice = "soprano" {
        \relative c'' {
          d2 b4 g a b cs2 d2 \breathe g4 e d d cs e b b a2 \breathe d2 b4 g a b cs2 d1 \bar "|."
        }
      }
    >>
    \new Staff <<
      \clef treble \time 4/4 \key d \major
      \new Voice = "alto" {
        \relative c'' {
          \override NoteHead.color = #grey
          \override Stem.color = #grey
          \override Beam.color = #grey
          \override Accidental.color = #grey
          a2 g4 g fs fs a2 a2 g4 a fs g e e g g fs2 a2 g4 g fs fs a2 a1
        }
      }
    >>
    \new Staff <<
      \clef "treble_8" \time 4/4 \key d \major
      \new Voice = "tenor" {
        \relative c' {
          \override NoteHead.color = #grey
          \override Stem.color = #grey
          \override Beam.color = #grey
          \override Accidental.color = #grey
          fs2 d4 e cs b e2 fs2 d4 a b b a b d e cs2 fs2 d4 e cs b e2 fs1
        }
      }
    >>
    \new Staff <<
      \clef bass \time 4/4 \key d \major
      \new Voice = "bass" {
        \relative f {
          \override NoteHead.color = #grey
          \override Stem.color = #grey
          \override Beam.color = #grey
          \override Accidental.color = #grey
          d2 g4 e fs d a a' d,2
          b4 cs b g a g g' e fs2
          d2 g4 e fs d a a' d,1
        }
      }
      \new FiguredBass { \figuremode {
        }
      }
      \new FiguredBass { \figuremode {
          \bassFigureExtendersOn
        }
      }
    >>
  >>
}
%}
\score {
  \header {
    title = ##f
    subtitle = ##f
    piece = "exercice 7.9"
  }
  \new ChoirStaff <<
    \new Staff <<
      \clef treble \time 2/4 \key f \major
      \new Voice = "soprano" {
        \relative c'' {
          f8 (a, bf4) a8 (f d' f, e4) r4 g8 (bf16 g e8) c'8-. a4 d8 (bf a f g4 f) d'8 (bf a f g4 f2) \bar "|." \bar "|."
        }
      }
    >>
    \new Staff <<
      \clef treble \time 2/4 \key f \major
      \new Voice = "alto" {
        \relative c'' {
          \repeat unfold 9 { s2 }
        }
      }
    >>
    \new Staff <<
      \clef "treble_8" \time 2/4 \key f \major
      \new Voice = "tenor" {
        \relative c'' {
          \repeat unfold 9 { s2 }
        }
      }
    >>
    \new Staff <<
      \clef bass \time 2/4 \key f \major
      \new Voice = "bass" {
        \relative f {
          \repeat unfold 9 { s2 }
        }
      }
      \new FiguredBass { \figuremode {
        }
      }
      \new FiguredBass { \figuremode {
          \bassFigureExtendersOn
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