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
  subtitle = "Livre 1, chapitre 4"
  tagline = ""
}
\paper {
  #(include-special-characters)
  print-all-headers = ##t
  max-systems-per-page = 10
}
#(set-global-staff-size 16)
%#(set-default-paper-size "a4landscape")

\score {
  \header {
    title = ##f
    subtitle = ##f
    piece = "exercice 4.6 - A"
  }
  \new ChoirStaff
  <<
    \new Staff
    <<
      \clef treble \time 4/4 \key f \major
      \relative c' { s1 s1 }
    >>
    \new Staff
    <<
      \clef treble \time 4/4 \key f \major
      \relative c' { s1 s1 }
    >>
    \new Staff
    <<
      \clef bass \time 4/4 \key f \major
      \relative f { f2 bf,4 c f,1 \bar "||" }
      \new FiguredBass { \figuremode { <5>2 <6>4 <5> <5>1 } }
    >>
  >>
}
\score {
  \header {
    title = ##f
    subtitle = ##f
    piece = "exercice 4.6 - B"
  }
  \new ChoirStaff
  <<
    \new Staff
    <<
      \clef treble \time 6/8 \key g \major
      \relative c' { s2. s2. }
    >>
    \new Staff
    <<
      \clef treble \time 6/8 \key g \major
      \relative c' { s2. s2. }
    >>
    \new Staff
    <<
      \clef "treble_8" \time 6/8 \key g \major
      \relative c' { s2. s2. }
    >>
    \new Staff
    <<
      \clef bass \time 6/8 \key g \major
      \relative f { g4 fs8 g4. e4 fs8 g4. \bar "||" }
      \new FiguredBass { \figuremode { <_>4 <6>8 <_>4. <6>4 <6>8 <5>4. } }
    >>
  >>
}
\score {
  \header {
    title = ##f
    subtitle = ##f
    piece = "exercice 4.6 - C"
  }
  \new ChoirStaff
  <<
    \new Staff
    <<
      \clef treble \time 4/4 \key g \minor
      \relative c' { s1 s1 s1 s1 }
    >>
    \new Staff
    <<
      \clef treble \time 4/4 \key g \minor
      \relative c' { s1 s1 s1 s1 }
    >>
    \new Staff
    <<
      \clef bass \time 4/4 \key g \minor
      \relative f, { r4 bf c2 g4 ef'4 d2 g,2. fs4 g1 \bar "||" }
      \new FiguredBass { \figuremode { \bassFigureExtendersOn <6>4 <6> <5> <6> <5> <6> \bassFigureExtendersOff <6 _+> \bassFigureExtendersOn <5 _+> \bassFigureExtendersOff <5> <6> <5> <6> <5>1} }
    >>
  >>
}
\score {
  \header {
    title = ##f
    subtitle = ##f
    piece = "exercice 4.6 - D"
  }
  \new ChoirStaff
  <<
    \new Staff
    <<
      \clef treble \time 3/4 \key b \minor
      \relative c' { s2. s2. s2. s2. }
    >>
    \new Staff
    <<
      \clef treble \time 3/4 \key b \minor
      \relative c' { s2. s2. s2. s2. }
    >>
    \new Staff
    <<
      \clef "treble_8" \time 3/4 \key b \minor
      \relative c' { s2. s2. s2. s2. }
    >>
    \new Staff
    <<
      \clef bass \time 3/4 \key b \minor
      \relative f { b,4 cs d e2. b4 d8 b g4 fs2. \bar "||" }
      \new FiguredBass { \figuremode { <5>4 <6+> <6> <5>2. <5>4 \bassFigureExtendersOn <5>8 <5> <6>4 <5>2. } }
    >>
  >>
}
\score {
  \header {
    title = ##f
    subtitle = ##f
    piece = "exercice 4.6 - E"
  }
  \new ChoirStaff
  <<
    \new Staff
    <<
      \clef treble \time 2/2 \key c \major
      \relative c' { s1 s1 s1 s1 s1 }
    >>
    \new Staff
    <<
      \clef treble \time 2/2 \key c \major
      \relative c' { s1 s1 s1 s1 s1 }
    >>
    \new Staff
    <<
      \clef "treble_8" \time 2/2 \key c \major
      \relative c' { s1 s1 s1 s1 s1 }
    >>
    \new Staff
    <<
      \clef bass \time 2/2 \key c \major
      \relative f { c2 e a, f g1 a2 b c1 \bar "||" }
      \new FiguredBass { \figuremode { <_>2 <_> <_> <6> <5>2 <6> <5> <6> <5>1  } }
    >>
  >>
}
\score {
  \header {
    title = ##f
    subtitle = ##f
    piece = "exercice 4.7"
  }
  \new ChoirStaff
  <<
    \new Staff
    <<
      \clef treble \time 4/4 \key g \minor
      \relative c' { s1 s1 s1 s1 s1 s1 \time 3/4 \key g \major s2. s2. s2. s2. s2. s2. }
    >>
    \new Staff
    <<
      \clef treble \time 4/4 \key g \minor
      \relative c' { s1 s1 s1 s1 s1 s1 \time 3/4 \key g \major s2. s2. s2. s2. s2. s2. }
    >>
    \new Staff
    <<
      \clef bass \time 4/4 \key g \minor
      \relative f, { g4 a8 bf c4 c8 bf fs4 g8 g d' c bf a g c d4 ef8 d c bf \break a bf c g fs c' d d, g4 \fermata g' f! ef d1 \fermata \bar "||"
       \time 3/4 \key g \major r8 g16[ b,] c8[ a] d[ d,] \break g g' a[ c] g[ fs] e[ c] fs[ d] g[ e] a g16[ b,] c8[ a] d[ d,] e[ e'] a,[ c] d[ d] g,2. \fermata \bar "|."  }
      \new FiguredBass { \figuremode { <0>4 \bassFigureExtendersOn <0>8 <0> \bassFigureExtendersOff <5>4 <6>8 <3> <5/>4 <3>8 \bassFigureExtendersOn <3>8 <_+>8 <0> <0> <0> \bassFigureExtendersOff <5>8 <5> <6 _+> <5> <3> <0> <5> <6>
                                       <5/> <6> <5> <5> <6> <6 _!> <5 _+>4 <8> <5> <6> <6> <_+>1 <_>8 <0>8 \bassFigureExtendersOn <0> <0> <0> <0> \bassFigureExtendersOff
                                       <0> <5> <5> \bassFigureExtendersOn <5> \bassFigureExtendersOff <5> <6> <5> <5> <5/> <5> <5> <5> <5> <5>16 \bassFigureExtendersOn <5>16 <6>8 <6>8 \bassFigureExtendersOff <6> <5>
                                       <5> \bassFigureExtendersOn <5> \bassFigureExtendersOff <5> \bassFigureExtendersOn <5> \bassFigureExtendersOff<5> \bassFigureExtendersOn <5> \bassFigureExtendersOff <8>  } }
    >>
  >>
}
\score {
  \header {
    title = ##f
    subtitle = ##f
    piece = "exercice 4-8"
    opus = "mode de mi"
  }
  \new StaffGroup <<
    \new Staff \relative c' {
      \set Staff.explicitKeySignatureVisibility = #begin-of-line-visible
      \override Staff.KeyCancellation.break-visibility = #all-invisible
      \override Staff.TimeSignature.break-visibility = #end-of-line-invisible
      \clef alto
      \key c \major \time 2/2 e1 d b c a b d e f e \bar "||" \break
      \key c \major \time 2/2 \repeat unfold 10 { s1 } \bar "||" \break
    }
    \new Staff  \relative c {
      \set Staff.explicitKeySignatureVisibility = #begin-of-line-visible
      \override Staff.KeyCancellation.break-visibility = #all-invisible
      \override Staff.TimeSignature.break-visibility = #end-of-line-invisible
      \clef bass
      \key c \major \time 2/2 \repeat unfold 10 { s1 } \bar "||" \break
      \key c \major \time 2/2 e1 d b c a b d e f e \bar "||" \break
    }
  >>
}
\score {
  \header {
    title = ##f
    subtitle = ##f
    piece = "exercice 4-8"
    opus = "mode de fa"
  }
  \new StaffGroup <<
    \new Staff \relative c' {
      \set Staff.explicitKeySignatureVisibility = #begin-of-line-visible
      \override Staff.KeyCancellation.break-visibility = #all-invisible
      \override Staff.TimeSignature.break-visibility = #end-of-line-invisible
      \clef soprano
      \key c \major \time 2/2 f1 g c b a g d e f \bar "||" \break
      \transpose f d { \key c \major \time 2/2 \repeat unfold 9 { s1 } \bar "||" \break }
    }
    \new Staff  \relative c {
      \set Staff.explicitKeySignatureVisibility = #begin-of-line-visible
      \override Staff.KeyCancellation.break-visibility = #all-invisible
      \override Staff.TimeSignature.break-visibility = #end-of-line-invisible
      \clef bass
      \key c \major \time 2/2 \repeat unfold 9 { s1 } \bar "||" \break
      \transpose f d { \key c \major \time 2/2 f1 g c b a g d e f \bar "||" \break }
    }
  >>
}

\layout { \context { \Score \omit BarNumber } ragged-last = ##f }