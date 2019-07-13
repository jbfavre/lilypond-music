\version "2.18.2"
\language "english"

\header {
  tagline = ##f
}
\paper {
  #(include-special-characters)
  print-all-headers = ##t
  max-systems-per-page = 5
}
#(set-global-staff-size 13)

\book {
  \header {
    title = "H. Challan 1. Accords de 3 sons"
  }
\bookpart { % état fondamental
  \header {
    %title = ##f
    subtitle = "A. À l'état fondamental"
  }
  \score { % basses données
    \header {
      title = ##f
      subtitle = ##f
      piece=\markup { \bold "Basses données" }
    }
    \new StaffGroup <<
      \new Staff \with { instrumentName = "S."} \relative c'' {
        \set Staff.explicitKeySignatureVisibility = #begin-of-line-visible
        \override Staff.KeyCancellation.break-visibility = #all-invisible
        \override Staff.TimeSignature.break-visibility = #end-of-line-invisible
        \clef treble
        \key a \major \time 3/4 \repeat unfold 8 { s2. }
        \key e \major \time 2/4 \repeat unfold 8 { s2 }
        \key c \minor \time 3/4 \repeat unfold 8 { s2. }
        \key d \minor \time 4/4 \repeat unfold 6 { s1 }
        \key c \major \time 3/2  \repeat unfold 8 { s1. }
        \key bf \major \time 4/4 \repeat unfold 8 { s1 }
        \key g \minor \time 2/4 \repeat unfold 8 { s2 }
        \key bf \minor \time 6/8 \repeat unfold 8 { s2. }
        \key f \minor \time 2/4 \repeat unfold 8 { s2 }
        \key g \major \time 3/2 \repeat unfold 8 { s1. }
        \key a \major \time 2/4 \repeat unfold 16 { s2 }
        \key g \major \time 2/2 \repeat unfold 12 { s1 }
        \key d \major \time 4/4 \repeat unfold 8 { s1 }
        \key f \major \time 3/4 \repeat unfold 8 { s2. }
        \key bf \major \time 6/8 \repeat unfold 8 { s2. }
      }
      \new Staff \with { instrumentName = "A."} \relative c' {
        \set Staff.explicitKeySignatureVisibility = #begin-of-line-visible
        \override Staff.KeyCancellation.break-visibility = #all-invisible
        \override Staff.TimeSignature.break-visibility = #end-of-line-invisible
        \clef treble
        \key a \major \time 3/4 \repeat unfold 8 { s2. }
        \key e \major \time 2/4 \repeat unfold 8 { s2 }
        \key c \minor \time 3/4 \repeat unfold 8 { s2. }
        \key d \minor \time 4/4 \repeat unfold 6 { s1 }
        \key c \major \time 3/2  \repeat unfold 8 { s1. }
        \key bf \major \time 4/4 \repeat unfold 8 { s1 }
        \key g \minor \time 2/4 \repeat unfold 8 { s2 }
        \key bf \minor \time 6/8 \repeat unfold 8 { s2. }
        \key f \minor \time 2/4 \repeat unfold 8 { s2 }
        \key g \major \time 3/2 \repeat unfold 8 { s1. }
        \key a \major \time 2/4 \repeat unfold 16 { s2 }
        \key g \major \time 2/2 \repeat unfold 12 { s1 }
        \key d \major \time 4/4 \repeat unfold 8 { s1 }
        \key f \major \time 3/4 \repeat unfold 8 { s2. }
        \key bf \major \time 6/8 \repeat unfold 8 { s2. }
      }
      \new Staff \with { instrumentName = "T."} \relative c' {
        \set Staff.explicitKeySignatureVisibility = #begin-of-line-visible
        \override Staff.KeyCancellation.break-visibility = #all-invisible
        \override Staff.TimeSignature.break-visibility = #end-of-line-invisible
        \clef "treble_8"
        \key a \major \time 3/4 \repeat unfold 8 { s2. }
        \key e \major \time 2/4 \repeat unfold 8 { s2 }
        \key c \minor \time 3/4 \repeat unfold 8 { s2. }
        \key d \minor \time 4/4 \repeat unfold 6 { s1 }
        \key c \major \time 3/2  \repeat unfold 8 { s1. }
        \key bf \major \time 4/4 \repeat unfold 8 { s1 }
        \key g \minor \time 2/4 \repeat unfold 8 { s2 }
        \key bf \minor \time 6/8 \repeat unfold 8 { s2. }
        \key f \minor \time 2/4 \repeat unfold 8 { s2 }
        \key g \major \time 3/2 \repeat unfold 8 { s1. }
        \key a \major \time 2/4 \repeat unfold 16 { s2 }
        \key g \major \time 2/2 \repeat unfold 12 { s1 }
        \key d \major \time 4/4 \repeat unfold 8 { s1 }
        \key f \major \time 3/4 \repeat unfold 8 { s2. }
        \key bf \major \time 6/8 \repeat unfold 8 { s2. }
      }
      \new Staff \with { instrumentName = "B."} {
        \set Staff.explicitKeySignatureVisibility = #begin-of-line-visible
        \override Staff.KeyCancellation.break-visibility = #all-invisible
        \override Staff.TimeSignature.break-visibility = #end-of-line-invisible
        \clef bass
        \mark \markup { \bold "1" }
        \key a \major
        \time 3/4
        a4 e fs cs fs e a2 d4 e2. fs4 e a d e fs b,2 e4 a,2. \bar "||" \break
        <<
          \mark \markup { \bold "2" }
          \key e \major
          \time 2/4
          \new FiguredBass { \figuremode { s2 <_+>4 s4 s2 <_+>4 s4 s2 s4 <_+>4 } }
          \new Voice { cs'2 gs4 a fs2 gs4 cs fs a fs gs a fs cs'2 \bar "||" \break }
        >>
        \mark \markup { \bold "3" }
        \key c \minor
        \time 3/4
        ef2 c4 af,2 bf,4 c2 bf,4 ef2 c4 f2 ef4 af g c' af2 bf4 ef2. \bar "||" \break
        \mark \markup { \bold "4" }
        \key f \major
        \time 4/4
        f4 c d a, bf,2 c bf,4 a, d c bf, f c d bf,2 f4 d g c f2 \bar "||" \break
        <<
          \mark \markup { \bold "5" }
          \key c \major
          \time 3/2
          \new FiguredBass { \figuremode { s2 <_+>2 s2 s1 <_+>2 s1. <_+>1. s2 <_+>2 s2 s1. <_+>1. } }
          \new Voice { a,2 e f d1 e2 a f d e1. d2 e f d1 f2 e1. a,1. \bar "||" \break }
        >>
        \mark \markup { \bold "6" }
        \key bf \major
        \time 4/4
        bf,2 g4 ef f2 g c d4 ef f1 ef4 d g f bf2 g4 ef f g c f bf,1 \bar "||" \break
        <<
          \mark \markup { \bold "7" }
          \key g \minor
          \time 2/4
          \new FiguredBass{ \figuremode { s4 <_+>4 s2 s2 <_+>2 s2 s2 s4 <_+>4 } }
          \new Voice { g4 d g2 ef4 c d2 c4 g c ef c d g2 \bar "||" \break }
        >>
        \mark \markup { \bold "8" }
        \key bf \minor
        \time 6/8
        df4 gf,8 df4 af,8 bf4. af4. df4 bf,8 ef4 df8 gf4. af4. f4 ef8 af4 bf8 gf4 af8 f4 gf8 ef4. f4 bf8 af4. df4. \bar "||" \break
        <<
          \mark \markup { \bold "9" }
          \key f \minor
          \time 2/4
          \new FiguredBass { \figuremode { s2 <_!>4 s4 s2 <_!>4 s4 s4 <_!>4 s2 <_!>2 } }
          \new Voice { f4 bf, c df bf,2 c4 df bf, c df bf, c2 f,2 \bar "||" \break }
        >>
        \mark \markup { \bold "10" }
        \key g \major
        \time 3/2
        g,2 b, c d e c d e a, b, c d c b, e d g c d e a, d g,1 \bar "||" \break
        \mark \markup { \bold "11" }
        \key a \major
        \time 2/4
        a4 e fs cs d e d cs fs e a fs d a, e2 cs4 e fs cs d e d cs fs e a s e2 a,2 \bar "||" \break
        <<
          \mark \markup { \bold "12" }
          \key g \major
          \time 2/2
          \new FiguredBass { \figuremode { s1 <_+>2 s2 s1 <_+>1 s1 s2 s2 <_+>2 s2 s2 <_+>2 s1 s1 s2 <_+>2 } }
          \new Voice { e1 b,2 e a,1 b, e c2 a, b, c a, b, c1 a,2 c a, b, e1 \bar "||" \break }
        >>
        \mark \markup { \bold "13" }
        \key d \major
        \time 4/4
        d4 fs g a g e a b a fs b g a b a2 d4 fs g a b e fs d g g, a, b, g, a, d2 \bar "||" \break
        <<
          \mark \markup { \bold "14" }
          \key f \major
          \time 3/4
          \new FiguredBass { \figuremode {
            s2. <_+>2 s2 <_+>4 s4 <_+>2. s4 <_+>4 s4 s2. s2 <_+>4
          }
          }
          \new Voice { d4 bf g a2 bf4 g a d a,2. bf,4 a, g, d bf, d g bf a d2. \bar "||" \break }
        >>
        \mark \markup { \bold "15" }
        \key bf \major
        \time 6/8
        bf,4. d4 ef8 f4. ef c4 f8 g4 f8 ef4 bf,8 f4. d4 ef8 f4 g8 c4 d8 ef4 f8 ef4 d8 g4 c8 f4. bf,4. \bar "||" \break
      }
    >>
    \layout { \context { \Score \omit BarNumber } ragged-last = ##f }
  }
  \pageBreak
  \score { % chants donnés
    \header {
      title = ##f
      subtitle = ##f
      piece=\markup { \bold "Chants donnés" }
    }
    \new StaffGroup <<
      \new Staff \with { instrumentName = "S."} \relative c'' {
        \set Staff.explicitKeySignatureVisibility = #begin-of-line-visible
        \override Staff.KeyCancellation.break-visibility = #all-invisible
        \override Staff.TimeSignature.break-visibility = #end-of-line-invisible
        \clef treble
        \mark \markup { \bold "16" }
        \key c \major
        \time 4/4
        e2 d c a g1 g2 g a c c b c1 \bar "||" \break
        \mark \markup { \bold "17" }
        \key a \major
        \time 2/4
        a2 gs4 a d2 cs cs d4 fs es2 fs2 \bar "||" \break
        \mark \markup { \bold "18" }
        \key f \major
        \time 3/4
        f4 e f d2 c4 a2 d4 c2. c4 bf g f f g e2. f2. \bar "||" \break
        \mark \markup { \bold "19" }
        \key b \major
        \time 2/4
        ds'4 cs b2 gs4 cs as2 as4 b b e cs2 b \bar "||" \break
        \mark \markup { \bold "20" }
        \key d \minor
        \time 3/2
        f'2 e c c1 bs2 c1 a2 g1. a2 c g' e1 d2 d1 cs2 d1. \bar "||" \break
        \mark \markup { \bold "21" }
        \key bf \major
        \time 4/4
        bf2 g f1 g2 a bf c d ef c bf c a bf1 \bar "||" \break
        \mark \markup { \bold "22" }
        \key a \minor
        \time 4/4
        c2 b4 c c d b2 a4 f' e c d b a2 \bar "||" \break
        \mark \markup { \bold "23" }
        \key ef \major
        \time 6/8
        g4. f4 g8 af4. g g af4 bf8 c4. bf4. bf4 bf8 c4 d8 ef4. ef4 f8 d2. ef2. \bar "||" \break
        \mark \markup { \bold "24" }
        \key a \major
        \time 4/4
        cs2 b a fs' e e e1 d2 cs a gs a a a1 \bar "||" \break
        \mark \markup { \bold "25" }
        \key ef \minor
        \time 4/4
        gf2 cf bf bf ef ef d!1 ef2 cf bf gf af f ef1 \bar "||" \break
        \mark \markup { \bold "26" }
        \key df \major
        \time 3/2
        f'2 ef df bf1 af2 bf1 ef2 c1. c2 bf af bf c df df ef c df1. \bar "||" \break
        \mark \markup { \bold "27" }
        \key g \major
        \time 6/8
        b4 c8 b4 a8 g4. a4 d8 g,4 a8 b4 c8 a4 g8 a4. b4 c8 b4 a8 g4. f4 g8 c4 b8 g4 a8 fs4. g4. \bar "||" \break
        \mark \markup { \bold "28" }
        \key af \major
        \time 4/4
        c4 f ef c df2 bf c4 af g af f2 ef2 f4 g af bf c f ef c df2 c4 af af g af2 \bar "||" \break
        \mark \markup { \bold "29" }
        \key a \major
        \time 2/4
        a4 gs a2 a4 gs a2 a4 b gs a b cs b2 d4 cs d2 d4 cs d2 e4 a, gs fs gs2 a \bar "||" \break
        \mark \markup { \bold "30" }
        \key bf \major
        \time 4/4
        d2 c4 bf c a g f g a bf c ef d c2 d2 c4 bf g' f d ef d bf a g a2 bf2 \bar "||" \break
      }
      \new Staff \with { instrumentName = "A."} {
        \set Staff.explicitKeySignatureVisibility = #begin-of-line-visible
        \override Staff.KeyCancellation.break-visibility = #all-invisible
        \override Staff.TimeSignature.break-visibility = #end-of-line-invisible
        \clef treble
        \key c \major \time 4/4 \repeat unfold 7 { s1 }
        \key a \major \time 2/4 \repeat unfold 8 { s2 }
        \key f \major \time 3/4 \repeat unfold 8 { s2. }
        \key b \major \time 2/4 \repeat unfold 8 { s2 }
        \key d \minor \time 3/2 \repeat unfold 8 { s1. }
        \key bf \major \time 4/4 \repeat unfold 8 { s1 }
        \key c \major \time 4/4 \repeat unfold 4 { s1 }
        \key ef \major \time 6/8 \repeat unfold 8 { s2. }
        \key a \major \time 4/4 \repeat unfold 8 { s1 }
        \key gf \major \time 4/4 \repeat unfold 8 { s1 }
        \key df \major \time 3/2 \repeat unfold 8 { s1. }
        \key g \major \time 6/8 \repeat unfold 8 { s2. }
        \key af \major \time 4/4 \repeat unfold 8 { s1 }
        \key a \major \time 2/4 \repeat unfold 16 { s2 }
        \key bf \major \time 4/4 \repeat unfold 8 { s1 }
      }
      \new Staff \with { instrumentName = "T."} {
        \set Staff.explicitKeySignatureVisibility = #begin-of-line-visible
        \override Staff.KeyCancellation.break-visibility = #all-invisible
        \override Staff.TimeSignature.break-visibility = #end-of-line-invisible
        \clef "treble_8"
        \key c \major \time 4/4 \repeat unfold 7 { s1 }
        \key a \major \time 2/4 \repeat unfold 8 { s2 }
        \key f \major \time 3/4 \repeat unfold 8 { s2. }
        \key b \major \time 2/4 \repeat unfold 8 { s2 }
        \key d \minor \time 3/2 \repeat unfold 8 { s1. }
        \key bf \major \time 4/4 \repeat unfold 8 { s1 }
        \key c \major \time 4/4 \repeat unfold 4 { s1 }
        \key ef \major \time 6/8 \repeat unfold 8 { s2. }
        \key a \major \time 4/4 \repeat unfold 8 { s1 }
        \key gf \major \time 4/4 \repeat unfold 8 { s1 }
        \key df \major \time 3/2 \repeat unfold 8 { s1. }
        \key g \major \time 6/8 \repeat unfold 8 { s2. }
        \key af \major \time 4/4 \repeat unfold 8 { s1 }
        \key a \major \time 2/4 \repeat unfold 16 { s2 }
        \key bf \major \time 4/4 \repeat unfold 8 { s1 }
      }
      \new Staff \with { instrumentName = "B."} {
        \set Staff.explicitKeySignatureVisibility = #begin-of-line-visible
        \override Staff.KeyCancellation.break-visibility = #all-invisible
        \override Staff.TimeSignature.break-visibility = #end-of-line-invisible
        \clef bass
        \key c \major \time 4/4 \repeat unfold 7 { s1 }
        \key a \major \time 2/4 \repeat unfold 8 { s2 }
        \key f \major \time 3/4 \repeat unfold 8 { s2. }
        \key b \major \time 2/4 \repeat unfold 8 { s2 }
        \key d \minor \time 3/2 \repeat unfold 8 { s1. }
        \key bf \major \time 4/4 \repeat unfold 8 { s1 }
        \key c \major \time 4/4 \repeat unfold 4 { s1 }
        \key ef \major \time 6/8 \repeat unfold 8 { s2. }
        \key a \major \time 4/4 \repeat unfold 8 { s1 }
        \key gf \major \time 4/4 \repeat unfold 8 { s1 }
        \key df \major \time 3/2 \repeat unfold 8 { s1. }
        \key g \major \time 6/8 \repeat unfold 8 { s2. }
        \key af \major \time 4/4 \repeat unfold 8 { s1 }
        \key a \major \time 2/4 \repeat unfold 16 { s2 }
        \key bf \major \time 4/4 \repeat unfold 8 { s1 }
      }
    >>
    \layout { \context { \Score \omit BarNumber } ragged-last = ##f }
  }
}
\bookpart { % premier renversement
  \header {
    %title = ##f
    subtitle = "B. Permier renversement"
  }
  \score { % basses données
    \header {
      title = ##f
      subtitle = ##f
      piece=\markup { \bold "Basses données" }
    }
    \new StaffGroup <<
      \new Staff \with { instrumentName = "S."} {
        \set Staff.explicitKeySignatureVisibility = #begin-of-line-visible
        \override Staff.KeyCancellation.break-visibility = #all-invisible
        \override Staff.TimeSignature.break-visibility = #end-of-line-invisible
        \clef treble
        \key f \major \time 2/4 \repeat unfold 8 { s2 }
        \key c \major \time 4/4 \repeat unfold 8 { s1 }
        \key f \major \time 3/4 \repeat unfold 8 { s2. }
        \key d \major \time 2/4 \repeat unfold 8 { s2 }
        \key af \major \time 3/4 \repeat unfold 8 { s2. }
        \key f \major \time 4/4 \repeat unfold 8 { s1 }
        \key bf \major \time 2/4 \repeat unfold 10 { s2 }
        \key g \major \time 4/4 \repeat unfold 10 { s1 }
        \key a \major \time 3/2 \repeat unfold 8 { s1. }
        \key bf \major \time 2/4 \partial 4 s4 \repeat unfold 8 { s2 }
        \key af \major \time 4/4 \repeat unfold 7 { s1 }
        \key ef \major \time 2/4 \repeat unfold 12 { s2 }
        \key bf \major \time 6/8 \repeat unfold 7 { s2. }
        \key bf \major \time 2/4 \repeat unfold 16 { s2 }
        \key e \major \time 6/8 \repeat unfold 8 { s2. }
      }
      \new Staff \with { instrumentName = "A."} {
        \set Staff.explicitKeySignatureVisibility = #begin-of-line-visible
        \override Staff.KeyCancellation.break-visibility = #all-invisible
        \override Staff.TimeSignature.break-visibility = #end-of-line-invisible
        \clef treble
        \key f \major \time 2/4 \repeat unfold 8 { s2 }
        \key c \major \time 4/4 \repeat unfold 8 { s1 }
        \key f \major \time 3/4 \repeat unfold 8 { s2. }
        \key d \major \time 2/4 \repeat unfold 8 { s2 }
        \key af \major \time 3/4 \repeat unfold 8 { s2. }
        \key f \major \time 4/4 \repeat unfold 8 { s1 }
        \key bf \major \time 2/4 \repeat unfold 10 { s2 }
        \key g \major \time 4/4 \repeat unfold 10 { s1 }
        \key a \major \time 3/2 \repeat unfold 8 { s1. }
        \key bf \major \time 2/4 \partial 4 s4 \repeat unfold 8 { s2 }
        \key af \major \time 4/4 \repeat unfold 7 { s1 }
        \key ef \major \time 2/4 \repeat unfold 12 { s2 }
        \key bf \major \time 6/8 \repeat unfold 7 { s2. }
        \key bf \major \time 2/4 \repeat unfold 16 { s2 }
        \key e \major \time 6/8 \repeat unfold 8 { s2. }
      }
      \new Staff \with { instrumentName = "T."} {
        \set Staff.explicitKeySignatureVisibility = #begin-of-line-visible
        \override Staff.KeyCancellation.break-visibility = #all-invisible
        \override Staff.TimeSignature.break-visibility = #end-of-line-invisible
        \clef "treble_8"
        \key f \major \time 2/4 \repeat unfold 8 { s2 }
        \key c \major \time 4/4 \repeat unfold 8 { s1 }
        \key f \major \time 3/4 \repeat unfold 8 { s2. }
        \key d \major \time 2/4 \repeat unfold 8 { s2 }
        \key af \major \time 3/4 \repeat unfold 8 { s2. }
        \key f \major \time 4/4 \repeat unfold 8 { s1 }
        \key bf \major \time 2/4 \repeat unfold 10 { s2 }
        \key g \major \time 4/4 \repeat unfold 10 { s1 }
        \key a \major \time 3/2 \repeat unfold 8 { s1. }
        \key bf \major \time 2/4 \partial 4 s4 \repeat unfold 8 { s2 }
        \key af \major \time 4/4 \repeat unfold 7 { s1 }
        \key ef \major \time 2/4 \repeat unfold 12 { s2 }
        \key bf \major \time 6/8 \repeat unfold 7 { s2. }
        \key bf \major \time 2/4 \repeat unfold 16 { s2 }
        \key e \major \time 6/8 \repeat unfold 8 { s2. }
      }
      \new Staff \with { instrumentName = "B."} {
        \set Staff.explicitKeySignatureVisibility = #begin-of-line-visible
        \override Staff.KeyCancellation.break-visibility = #all-invisible
        \override Staff.TimeSignature.break-visibility = #end-of-line-invisible
        \clef bass
        <<
          \mark \markup { \bold "31" }
          \key f \major
          \time 2/4
          \new FiguredBass { \figuremode { \bassFigureExtendersOn <5>4 <6> <5> <6> <5> <6> <5> <5> <5\!> <6> <6\!> <5> <5\!>2 <5\!>2 } }
          \new Voice { f4 e f d c a, bf, d f d bf,2 c2 f,2 \bar "||" \break }
        >>
        <<
          \mark \markup { \bold "32" }
          \key c \major
          \time 4/4
          \new FiguredBass { \figuremode { \bassFigureExtendersOn <5>2 <5> <5\!> <_+> <6> <6\!> <_+>1 <6>2 <6> <6\!> <5> <6> <_+> <5>1 } }
          \new Voice { a,2 c d e c d e1 c2 a, gs, a, d e a,1 \bar "||" \break }
        >>
        <<
          \mark \markup { \bold "33" }
          \key f \major
          \time 3/4
          \new FiguredBass { \figuremode { \bassFigureExtendersOn <5>4 <6> <6\!> <5>2 <6>4 <6\!> <5> <6> <5>2. <5\!>4 <5\!> <6> <6\!> <6\!> <6\!> <5>2. <5\!>2. } }
          \new Voice { f4 d e f2 d4 bf,2. c2. a,4 d bf, c d bf, c2. f, \bar "||" \break }
        >>
        <<
          \mark \markup { \bold "34" }
          \key d \major \time 2/4
          \new FiguredBass { \figuremode { \bassFigureExtendersOn <5>4 <6> <6\!> <_+> <6> <5> <_+>2 <5>4 <6> <5> <5> <6> <_+> <5>2 } }
          \new Voice { b4 g e fs d e fs2 e4 d e g e fs b,2 \bar "||" \break }
        >>
        <<
          \mark \markup { \bold "35" }
          \key af \major \time 3/4
          \new FiguredBass { \figuremode { \bassFigureExtendersOn  <5>2 <5\!>4 <6>2 <6\!>4 <5> <6> <6\!> <5>2. <6>2 <6>4 <6\!> <5> <6> <5> <6> <5> <5>2. } }
          \new Voice { af,2 df4 c2 f4 ef c df ef2. c2 af,4 f ef c df2 ef4 af2. \bar "||" \break }
        >>
        <<
          \mark \markup { \bold "36" }
          \key f \major \time 4/4
          \new FiguredBass { \figuremode { \bassFigureExtendersOn <5>2 <6>4 <6>4 <5>2 <6> <5> <5\!>4 <6> <6\!> <5> <5\!>2 <5\!> <6>4 <6> <5> <6> <6\!> <5> <5\!> <6> <5>2 <5\!>1 } }
          \new Voice { f2 d4 bf, c2 a, bf, c4 d e f c2 d bf,4 g, a, bf, c d bf,2 c f,1 \bar "||" \break }
        >>
        <<
          \mark \markup { \bold "37" }
          \key bf \major \time 2/4
          \new FiguredBass { \figuremode { \bassFigureExtendersOn <5>4 <5> <6> <6\!> <_+>2 <6>4 <6> <6\!> <5> <6> <6> <_+> <6> <6\!> <_+> <5> <5\!> <5\!>2 } }
          \new Voice { g,4 bf, ef c d2 bf,4 g, fs, g, ef c d bf, c d ef c g2 \bar "||" \break }
        >>
        <<
          \mark \markup { \bold "38" }
          \key g \major \time 4/4
          \new FiguredBass { \figuremode { \bassFigureExtendersOn <5>4 <6> <5> <5\!> <5\!> <6> <5> <5\!> <6> <5> <6> <5> <5\!>2 <5\!>4 <5> <5\!> <5\!> <5\!> <5> <5\!>2 <6>4 <6> <5> <6> <5> <5> <6> <5> <6> <5> <5\!>2 <5\!>4 <6> <5>2 <5\!> } }
          \new Voice { g4 fs g c d b, c d e2 c d b,4 d e c d fs g2 e4 c d b, c e fs g c2 d e4 c d2 g,2 \bar "||" \break }
        >>
        <<
          \mark \markup { \bold "39" }
          \key a \major \time 3/2
          \new FiguredBass { \figuremode { \bassFigureExtendersOn <5>1 <6>2 <5>1 <6>2 <5>2 <5> <6> <5>1. <6>2 <6> <6\!> <5> <6> <5> <6> <6\!> <5> <5\!>1. } }
          \new Voice { a1 gs2 fs1 e2 d1. e1. cs2 a, fs e cs d fs d e a,1. \bar "||" \break }
        >>
        <<
          \mark \markup { \bold "40" }
          \key bf \major \time 2/4
          \new FiguredBass { \figuremode { \bassFigureExtendersOn <5>4 <6> <6> <6\!> <5> <6> <6\!> <5> <5\!> <5\!> <5\!> <5\!> <6> <6\!> <5> <5\!>2 } }
          \new Voice { \partial 4 f4 d bf, a, bf, g ef f d g ef f g ef f bf,2 \bar "||" \break }
        >>
        <<
          \mark \markup { \bold "41" }
          \key af \major \time 4/4
          \new FiguredBass { \figuremode { \bassFigureExtendersOn <5>4 <6> <5> <6> <_!> <6> <6\!> <_!> <5> <6> <6\!> <6> <5> <_!> <5> <6> <6\!> <6> <5> <6> <6\!> <6\!> <_!>2 <5>1 } }
          \new Voice { f4 e f df c af, bf, c df2 af,2 bf,4 c df2 af, df af,4 bf, c2 f,1 \bar "||" \break }
        >>
        <<
          \mark \markup { \bold "42" }
          \key ef \major \time 2/4
          \new FiguredBass { \figuremode { \bassFigureExtendersOn <5>4 <6> <5> <6> <5> <5> <6> <5> <6> <6\!> <5>2 <5\!>4 <5> <5\!> <5\!> <5\!> <5\!> <6> <6> <5> <5\!> <5\!>2 } }
          \new Voice { ef4 c bf, g, af, c d ef c af, bf,2 g,4 bf, c af, bf, ef c af, c bf, ef2 \bar "||" \break }
        >>
        <<
          \mark \markup { \bold "43" }
          \key bf \major \time 6/8
          \new FiguredBass { \figuremode { \bassFigureExtendersOn <5>4 <6>8 <6\!>4 <5>8 <_+>4. <6>4 <6>8 <6\!>4 <6>8 <_+>4. <6>4 <5>8 <_+>4 <6>8 <6\!>4 <5>8 <6>4 <6\!>8 <_+>4 <6>8 <6\!>4 <_+>8 <5>2. } }
          \new Voice { g4 ef8 c4. d bf,4 g,8 ef4 c8 d4. bf,4 c8 d4 e8 fs4 g8 ef!4 c8 d4 bf,8 c4 d8 g,2. \bar "||" \break }
        >>
        <<
          \mark \markup { \bold "44" }
          \key bf \major \time 2/4
          \new FiguredBass { \figuremode { \bassFigureExtendersOn <5>4 <5> <5\!> <5\!> <5\!> <6> <5> <6> <5> <6> <6\!> <5> <5\!> <6> <5>2 <5\!>4 <5\!> <6> <6\!> <6\!> <5> <5\!> <5\!> <5\!> <5\!> <6> <5> <5\!>2 <5\!>2} }
          \new Voice { bf,4 d ef f ef2 f g4 ef a, bf, g2 f ef4 c d ef f g d ef f ef d c f2 bf,\bar "||" \break }
        >>
        <<
          \mark \markup { \bold "45" }
          \key e \major \time 6/8
          \new FiguredBass { \figuremode { \bassFigureExtendersOn <5>4 <6>8 <6\!>4 <5>8 <5\!>8 <6>4 <5>4. <6>4 <6>8 <5>4 <6>8 <6\!>4 <5>8 <5\!>4. <5\!>4 <5>8 <5\!>4. <5\!>4 <5>8 <5\!>4. <6>4 <6>8 <5>4 <6>8 <6\!>8 <5>8 <5\!>8 <5\!>4. } }
          \new Voice { e4 cs8 ds4 e8 a,4. b, gs, fs,4 gs,8 a,4. b, gs,4 b,8 cs4. b,4 ds8 e4. cs4 a,8 fs,4 gs,8 a,4 b,8 e4. \bar "||" \break }
        >>
      }
    >>
  }
  \pageBreak
  \score { % chants donnés
    \header {
      title = ##f
      subtitle = ##f
      piece=\markup { \bold "Chants donnés" }
    }
    \new StaffGroup <<
      \new Staff \with { instrumentName = "S."} \relative c'' {
        \set Staff.explicitKeySignatureVisibility = #begin-of-line-visible
        \override Staff.KeyCancellation.break-visibility = #all-invisible
        \override Staff.TimeSignature.break-visibility = #end-of-line-invisible
        \clef treble
        \mark \markup { \bold "46" }
        \key d \major \time 3/4 fs,2 a4 fs2 g4 a2 d4 b g e cs2 d4 e2 cs4 d2. \bar "||" \break
        \mark \markup { \bold "47" }
        \key f \major \time 2/4 a'4 bf c d f d c2 bf4 c a bf g8 f e4 f2 \bar "||" \break
        \mark \markup { \bold "48" }
        \key f \major \time 4/4 d'4 cs d f bf,2 a4 d e d cs2 d4 bf bf g a2 f4 g e cs d2 \bar "||" \break
        \mark \markup { \bold "49" }
        \key g \minor \time 4/4 d'2 ef f d1 ef2 c1 bf2 a1. bf2 f' d ef1 c2 a1. bf \bar "||" \break
        \mark \markup { \bold "50" }
        \key b \minor \time 4/4  d2 fs4 d e2 cs as b4 d cs1 b2 as4 b g g' e cs as b cs as b1 \bar "||" \break
        \mark \markup { \bold "51" }
        \key c \major \time 4/4 c4 d c b a2 g c e4 g e c b2 b4 e c2 d4 g e2 f4 d b c a g a c d2 b c1 \bar "||" \break
        \mark \markup { \bold "52" }
        \key df \major \time 3/4 \partial 4 f4 df2 c4 a2 bf4 f'2 df4 c2 bf4 gf'4 ef c a bf gf f2. f2. \bar "||" \break
        \mark \markup { \bold "53" }
        \key c \major \time 4/4 c'2 d4 b gs2 a4 c e2 c4 d e1 a2 f4 d b a gs a b2 gs a1 \bar "||" \break
        \mark \markup { \bold "54" }
        \key a \major \time 2/2 a2 b gs a d fs e1 a2 fs e d e cs d b gs1 a2 d b1 a1 \bar "||" \break
        \mark \markup { \bold "55" }
        \key b \major \time 4/4 b4 gs e cs ds e gs b ds2 b4 cs as gs fss2 gs4 b cs e gs e ds cs ds b as gs fss2 gs \bar "||" \break
        \mark \markup { \bold "56" }
        \key g \major \time 3/4 b4 d b a2. g4 b g fs2. e2 d4 e2 g4 a c a fs2. g2 g4 d' g, a fs2. g2. \bar "||" \break
        \mark \markup { \bold "57" }
        \key c \major \time 4/4 a2 e'4 c d2 e4 a f d b gs a2 gs4 r4 a2 c4 e c a f e f2 a4 b gs2 a \bar "||" \break
        \mark \markup { \bold "58" }
        \key e \major \time 2/4 cs4 e cs ds e fs e2 a4 fs e ds e cs b2 cs4 e cs ds b a gs a fs ds' cs b gs2 a a4 e' a, b gs2 a \bar "||" \break
        \mark \markup { \bold "59" }
        \key f \major \time 6/8 d4 cs8 d4 f8 a4. f4 d8 cs4 d8 bf4 a8 g f g a4. d4 cs8 d4 f8 a4. f4 d8 bf4. g4 e8 cs4. d \bar "||" \break
        \mark \markup { \bold "60" }
        \key g \major \time 3/2 g2 a c d e g g a fs g d b e1 d2 b c d g, a fs g1. \bar "||" \break
      }
      \new Staff \with { instrumentName = "A."} {
        \set Staff.explicitKeySignatureVisibility = #begin-of-line-visible
        \override Staff.KeyCancellation.break-visibility = #all-invisible
        \override Staff.TimeSignature.break-visibility = #end-of-line-invisible
        \clef treble
        \key d \major \time 3/4 \repeat unfold 7 { s2. }
        \key f \major \time 2/4 \repeat unfold 8 { s2 }
        \key f \major \time 4/4 \repeat unfold 6 { s1 }
        \key g \minor \time 4/4 \repeat unfold 8 { s1. }
        \key a \major \time 4/4 \repeat unfold 8 { s1 }
        \key c \major \time 4/4 \repeat unfold 10 { s1 }
        \key df \major \time 3/4 \partial 4 s4 \repeat unfold 8 { s2. }
        \key c \major \time 4/4 \repeat unfold 8 { s1 }
        \key a \major \time 2/2 \repeat unfold 12 { s1 }
        \key b \major \time 4/4 \repeat unfold 8 { s1 }
        \key g \major \time 3/4 \repeat unfold 12 { s2. }
        \key c \major \time 4/4 \repeat unfold 8 { s1 }
        \key e \major \time 2/4 \repeat unfold 20 { s2 }
        \key f \major \time 6/8 \repeat unfold 8 { s2. }
        \key g \major \time 3/2 \repeat unfold 8 { s1. }
      }
      \new Staff \with { instrumentName = "T."} {
        \set Staff.explicitKeySignatureVisibility = #begin-of-line-visible
        \override Staff.KeyCancellation.break-visibility = #all-invisible
        \override Staff.TimeSignature.break-visibility = #end-of-line-invisible
        \clef "treble_8"
        \key d \major \time 3/4 \repeat unfold 7 { s2. }
        \key f \major \time 2/4 \repeat unfold 8 { s2 }
        \key f \major \time 4/4 \repeat unfold 6 { s1 }
        \key g \minor \time 4/4 \repeat unfold 8 { s1. }
        \key a \major \time 4/4 \repeat unfold 8 { s1 }
        \key c \major \time 4/4 \repeat unfold 10 { s1 }
        \key df \major \time 3/4 \partial 4 s4 \repeat unfold 8 { s2. }
        \key c \major \time 4/4 \repeat unfold 8 { s1 }
        \key a \major \time 2/2 \repeat unfold 12 { s1 }
        \key b \major \time 4/4 \repeat unfold 8 { s1 }
        \key g \major \time 3/4 \repeat unfold 12 { s2. }
        \key c \major \time 4/4 \repeat unfold 8 { s1 }
        \key e \major \time 2/4 \repeat unfold 20 { s2 }
        \key f \major \time 6/8 \repeat unfold 8 { s2. }
        \key g \major \time 3/2 \repeat unfold 8 { s1. }
      }
      \new Staff \with { instrumentName = "B."} {
        \set Staff.explicitKeySignatureVisibility = #begin-of-line-visible
        \override Staff.KeyCancellation.break-visibility = #all-invisible
        \override Staff.TimeSignature.break-visibility = #end-of-line-invisible
        \clef bass
        \key d \major \time 3/4 \repeat unfold 7 { s2. }
        \key f \major \time 2/4 \repeat unfold 8 { s2 }
        \key f \major \time 4/4 \repeat unfold 6 { s1 }
        \key g \minor \time 4/4 \repeat unfold 8 { s1. }
        \key a \major \time 4/4 \repeat unfold 8 { s1 }
        \key c \major \time 4/4 \repeat unfold 10 { s1 }
        \key df \major \time 3/4 \partial 4 s4 \repeat unfold 8 { s2. }
        \key c \major \time 4/4 \repeat unfold 8 { s1 }
        \key a \major \time 2/2 \repeat unfold 12 { s1 }
        \key b \major \time 4/4 \repeat unfold 8 { s1 }
        \key g \major \time 3/4 \repeat unfold 12 { s2. }
        \key c \major \time 4/4 \repeat unfold 8 { s1 }
        \key e \major \time 2/4 \repeat unfold 20 { s2 }
        \key f \major \time 6/8 \repeat unfold 8 { s2. }
        \key g \major \time 3/2 \repeat unfold 8 { s1. }
      }
    >>
    \layout { \context { \Score \omit BarNumber } ragged-last = ##f }
  }
}
\bookpart { % deuxième renversement
  \header {
    %title = ##f
    subtitle = "B. Deuxième renversement"
  }
  \score { % basses données
    \header {
      title = ##f
      subtitle = ##f
      piece=\markup { \bold "Basses données" }
    }
    \new StaffGroup <<
      \new Staff \with { instrumentName = "S."} {
        \set Staff.explicitKeySignatureVisibility = #begin-of-line-visible
        \override Staff.KeyCancellation.break-visibility = #all-invisible
        \override Staff.TimeSignature.break-visibility = #end-of-line-invisible
        \clef treble
        \key d \major \time 4/4 \repeat unfold 8 { s1 }
        \key f \major \time 3/4 \repeat unfold 8 { s2. }
        \key c \major \time 3/2 \repeat unfold 8 { s1. }
        \key g \major \time 2/4 \repeat unfold 13 { s2 }
        \key g \major \time 4/4 \repeat unfold 8 { s1 }
        \key f \major \time 3/2 \repeat unfold 12 { s1. }
        \key gf \major \time 6/8 \repeat unfold 8 { s2. }
        \key f \major \time 3/4 \repeat unfold 12 { s2. }
        \key a \major \time 3/4 \repeat unfold 16 { s2. }
        \key af \major \time 4/4 \repeat unfold 16 { s1 }
        \key df \major \time 4/4 \repeat unfold 16 { s1 }
        \key e \major \time 6/8 \repeat unfold 8 { s2. }
        \key af \major \time 2/4 \repeat unfold 18 { s2 }
        \key bf \major \time 3/4 \repeat unfold 12 { s2. }
        \key a \major \time 4/4 \repeat unfold 12 { s1 }
      }
      \new Staff \with { instrumentName = "A."} {
        \set Staff.explicitKeySignatureVisibility = #begin-of-line-visible
        \override Staff.KeyCancellation.break-visibility = #all-invisible
        \override Staff.TimeSignature.break-visibility = #end-of-line-invisible
        \clef treble
        \key d \major \time 4/4 \repeat unfold 8 { s1 }
        \key f \major \time 3/4 \repeat unfold 8 { s2. }
        \key c \major \time 3/2 \repeat unfold 8 { s1. }
        \key g \major \time 2/4 \repeat unfold 13 { s2 }
        \key g \major \time 4/4 \repeat unfold 8 { s1 }
        \key f \major \time 3/2 \repeat unfold 12 { s1. }
        \key gf \major \time 6/8 \repeat unfold 8 { s2. }
        \key f \major \time 3/4 \repeat unfold 12 { s2. }
        \key a \major \time 3/4 \repeat unfold 16 { s2. }
        \key af \major \time 4/4 \repeat unfold 16 { s1 }
        \key df \major \time 4/4 \repeat unfold 16 { s1 }
        \key e \major \time 6/8 \repeat unfold 8 { s2. }
        \key af \major \time 2/4 \repeat unfold 18 { s2 }
        \key bf \major \time 3/4 \repeat unfold 12 { s2. }
        \key a \major \time 4/4 \repeat unfold 12 { s1 }
      }
      \new Staff \with { instrumentName = "T."} {
        \set Staff.explicitKeySignatureVisibility = #begin-of-line-visible
        \override Staff.KeyCancellation.break-visibility = #all-invisible
        \override Staff.TimeSignature.break-visibility = #end-of-line-invisible
        \clef "treble_8"
        \key d \major \time 4/4 \repeat unfold 8 { s1 }
        \key f \major \time 3/4 \repeat unfold 8 { s2. }
        \key c \major \time 3/2 \repeat unfold 8 { s1. }
        \key g \major \time 2/4 \repeat unfold 13 { s2 }
        \key g \major \time 4/4 \repeat unfold 8 { s1 }
        \key f \major \time 3/2 \repeat unfold 12 { s1. }
        \key gf \major \time 6/8 \repeat unfold 8 { s2. }
        \key f \major \time 3/4 \repeat unfold 12 { s2. }
        \key a \major \time 3/4 \repeat unfold 16 { s2. }
        \key af \major \time 4/4 \repeat unfold 16 { s1 }
        \key df \major \time 4/4 \repeat unfold 16 { s1 }
        \key e \major \time 6/8 \repeat unfold 8 { s2. }
        \key af \major \time 2/4 \repeat unfold 18 { s2 }
        \key bf \major \time 3/4 \repeat unfold 12 { s2. }
        \key a \major \time 4/4 \repeat unfold 12 { s1 }
      }
      \new Staff \with { instrumentName = "B."} {
        \set Staff.explicitKeySignatureVisibility = #begin-of-line-visible
        \override Staff.KeyCancellation.break-visibility = #all-invisible
        \override Staff.TimeSignature.break-visibility = #end-of-line-invisible
        \clef bass
        <<
          \mark \markup { \bold "61" }
          \key d \major \time 4/4
          \new FiguredBass { \figuremode { \bassFigureExtendersOn <5>2 <6+ 4> <6> <6\!> <6\! 4> <6\!> <6\! 4> <_+> <6> <6+ 4> <5> <6> <6\! 4> <_+> <5>1 } }
          \new Voice { b,2 cs d g fs e fs1 d2 cs b, g fs1 b, \bar "||" \break }
        >>
        <<
          \mark \markup { \bold "62" }
          \key f \major \time 3/4
          \new FiguredBass { \figuremode { \bassFigureExtendersOn <5>4 <6 4> <5> <6>2 <5>4 <6> <6> <6\!> <6\! 4> <5>2 <6>4 <5> <6 4> <6\!> <6\!> <5> <6> <6\! 4> <5> <5\!>2. } }
          \new Voice { f2. e2 f4 d2 bf,4 c2. a,4 bf, c d e f bf, c c f,2. \bar "||" \break }
        >>
        <<
          \mark \markup { \bold "63" }
          \key c \major \time 3/2
          \new FiguredBass { \figuremode { \bassFigureExtendersOn <5>2 <5> <5\!> <6> <_+> <6> <6+ 4> <5> <6> <6\! 4>2 <_+>1 <5>2 <6 4> <6\!> <6\!> <5> <6 4> <6\!> <6\!> <_+> <5>1. } }
          \new Voice { a,2 c f d e c b, a, f e1. d2 e f c d e f d e a,1. \bar "||" \break }
        >>
        <<
          \mark \markup { \bold "64" }
          \key g \major \time 2/4
          \new FiguredBass { \figuremode { \bassFigureExtendersOn <5>4 <6> <5> <6> <5> <6 4> <6\!> <6\!> <5> <6> <6\! 4> <5> <6> <6\! 4> <5> <6> <6\! 4> <5> <5\!> <6> <5> <6> <6\! 4> <5> <5\!>2 } }
          \new Voice { g4 e d b, c d e fs g c d2 b,4 a, g, e d c d b, c2 d g \bar "||" \break }
        >>
        <<
          \mark \markup { \bold "65" }
          \key g \major \time 4/4
          \new FiguredBass { \figuremode { \bassFigureExtendersOn <5>4 <6 4> <5> <6> <5> <6> <6\! 4> <_+> <6> <6+ 4> <5> <6> <6\! 4> <5> <_+>2 <6>4 <5> <6 4> <6\!> <6\! 4> <6\!> <6\! 4> <_+> <5> <6> <6\! 4> <6\!> <_+>2 <5> } }
          \new Voice { e2~e4 ds e a, b,2 g4 fs e c b, a, b,2 g,4 a, b, c b, a, b,2 c b,4 a, b,2 e2 \bar "||" \break }
        >>
        <<
          \mark \markup { \bold "66" }
          \key f \major \time 3/2
          \new FiguredBass { \figuremode { \bassFigureExtendersOn <5>2 <6 4> <5> <6> <6\! 4> <5> <5\!> <6 4> <5> <6> <6\! 4> <5> <6>1 <6\!>2 <5>1. <6>2 <6\! 4> <5> <6> <5> <6> <6\! 4> <5> <6> <5> <6> <5> <5\!> <6 4>1 <5>1. } }
          \new Voice { f1. bf,2 c1 d2 c bf, a, g, f, d1 bf,2 c1. a2 g f e f d c bf, a, bf,1 c2 f1.~ f \bar "||" \break }
        >>
        <<
          \mark \markup { \bold "67" }
          \key gf \major \time 6/8
          \new FiguredBass { \figuremode { \bassFigureExtendersOn <5>4 <6 4>8 <5>4 <5\!>8 <5\!>4 <6 4>8 <5>4 <5\!>8 <5\!>4 <6>8 <6\! 4>4 <5>8 <6>4 <5>8 <5\!>4 <_>8 <5>4 <6 4>8 <5>4 <5>8 <6>4 <6\! 4>8 <5>4 <6>8 <5>4 <6>8 <6\! 4>4 <5>8 <5\!>4 <6 4>8 <5>4 <_>8} }
          \new Voice { gf4.~ gf4 df8 ef4.~ ef4 bf,8 cf4 bf,8 af,4 gf,8 f,4 gf,8 df4 r8 gf,4.~ gf,4 gf8 ef4 df8 cf4 bf,8 cf4 cf'8 df'4 df8 gf4.~ gf4 r8 \bar "||" \break }
        >>
        <<
          \mark \markup { \bold "68" }
          \key f \major \time 3/4
          \new FiguredBass { \figuremode { \bassFigureExtendersOn <5>4 <6> <5> <5/> <6 4> <5> <6> <6+ 4> <6> <5> <6 4> <6\!> <_+> <6> <6+ 4> <5> <6> <6\! 4> <6\!> <6\! 4> <_+> <6> <5> <6 4> <6\!> <6\!> <5> <6> <6\! 4> <_+> <5>2 <6 4>4  <5>2.} }
          \new Voice { d4 cs d bf a g f e f g a bf a f e d bf a g a2 f4 g a bf cs d g, a,2 d2.~ d \bar "||" \break }
        >>
        <<
          \mark \markup { \bold "69" }
          \key a \major \time 3/4
          \new FiguredBass { \figuremode { \bassFigureExtendersOn <5>4 <6 4> <5> <5\!> <6 4> <5> <5\!> <6 4> <5> <5\!> <5\!> <5\!> <6> <6\! 4> <5> <6> <6\! 4> <5> <6> <6\! 4> <5> <6 4>2 <5>4 <6> <5> <6 4> <6\!> <6\!> <5> <5\!> <6\! 4> <6\!> <6\! 4> <5> <5\!> <6> <5> <6> <5> <5\!> <5\!> <6 4>2 <5>4 <5\!>2. } }
          \new Voice { a2. e fs cs4 d e fs e d cs b, a, fs e d e2. cs4 d e fs gs a d e fs e d e cs fs d e fs d e2. a, \bar "||" \break }
        >>
        <<
          \mark \markup { \bold "70" }
          \key af \major \time 4/4
          \new FiguredBass { \figuremode { \bassFigureExtendersOn <5>2 <6 4> <_!>1 <6>2 <6! 4> <5> <6 4> <6\!> <6\!> <6! 4> <5> <5\!> <6 4> <5> <6> <5> <_!> <5> <6> <_!> <6> <5> <6 4> <5> <6> <5> <6 4> <_!>1 <5> } }
          \new Voice { f,2 df c1 af,2 g, f, f e af g f bf af g e f c df bf, c af, bf, c bf, af, bf, df c1 f, \bar "||" \break }
        >>
        <<
          \mark \markup { \bold "71" }
          \key df \major \time 4/4
          \new FiguredBass { \figuremode { \bassFigureExtendersOn <5>2 <6 4> <5> <5\!> <5\!> <6 4> <5> <5\!> <5\!> <6 4> <5> <5> <5\!> <6 4> <6\!> <6\!> <5> <5> <5\!> <5> <6> <5> <6> <6\! 4> <5> <5> <6> <5> <5\!> <6 4> <5>1  } }
          \new Voice { df1~ df2 bf, f1~ f2  df af1~ af2 c df ef f af, bf, df ef gf c df bf, af, gf, bf, gf, af, df1~ df\bar "||" \break }
        >>
        <<
          \mark \markup { \bold "72" }
          \key e \major \time 6/8
          \new FiguredBass { \figuremode { \bassFigureExtendersOn <5>4 <6+ 4>8 <6>4 <_+>8 <6>4 <6\!>8 <6\! 4>4 <_+>8 <6>4 <6\!>8 <5>4 <5\!>8 <6 4>4 <_+>8 <5>4 <6>8 <_+>4 <6>8 <5>4 <6 4>8 <6\!>4 <6\! 4>8 <5>4 <6>8 <6\! 4>4 <_+>8 <5>4 <6>8 <_+>4. <5> } }
          \new Voice { cs4 ds8 e4 gs8 e4 a8 gs4. e4 bs,8 cs4 fs8 gs4. a4 fs8 gs4 e8 fs4 gs8 a4 gs8 fs4 fs8 gs4 gs,8 a,4 fs,8 gs,4. cs \bar "||" \break }
        >>
        <<
          \mark \markup { \bold "73" }
          \key af \major \time 2/4
          \new FiguredBass { \figuremode { \bassFigureExtendersOn <5>4 <6> <6\! 4> <5> <6> <6\! 4> <5> <6> <6\! 4> <5> <5\!>2 <6>4 <5> <5\!> <6> <6\!> <5> <6 4> <6\!> <6\!> <5> <6\!> <5> <5\!> <6> <5> <5\!> <6\!> <5> <5\!>2 <5\!>4  <6 4> <5>2 } }
          \new Voice { af,4 f ef df c bf, af, f ef df ef2 c4 df ef f g, af, bf, c df ef c df ef f ef df c bf, ef2 af, af, \bar "||" \break }
        >>
        <<
          \mark \markup { \bold "74" }
          \key bf \major \time 3/4
          \new FiguredBass { \figuremode { \bassFigureExtendersOn <5>4 <5\!> <6 4> <5> <5\!> <6 4> <6\!> <5> <6 4> <6\! 4\!> <6\!> <_+> <6> <6> <6\! 4> <5> <5\!> <6 4> <5> <6> <5> <6> <6\! 4> <_+> <6> <5> <6 4> <6\!> <_+> <6> <6\!> <6\! 4> <_+> <5>2. } }
          \new Voice { g,4 ef d c a g fs g ef d c d bf, g f ef c' bf a fs g c d2 bf,4 c d ef d bf, ef d2 g,2. \bar "||" \break }
        >>
        <<
          \mark \markup { \bold "75" }
          \key a \major \time 4/4
          \new FiguredBass { \figuremode { \bassFigureExtendersOn <5>4 <6 4> <5> <5\!> <5\!>4 <6 4> <5> <6> <5> <6 4> <6\!> <6\! 4> <6\!> <5> <5\!> <5> <5\!> <6 4> <6\!> <6\! 4> <6\!> <5> <5\!> <6> <5> <6> <6\! 4> <5> <6> <6\! 4> <5> <6>  <6\! 4> <5> <6> <6\!> <6\! 4> <5> <5\!> <6> <6\!> <5> <6 4> <5> <5\!>1} }
          \new Voice { a2. d4 e2. cs4 d e fs e d2 e4 gs, a, b, cs b, a,2 b,4 gs, a, fs e d cs b, a, fs e d cs fs e2 fs2 cs4 d e2 a,1 \bar "||" \break }
        >>
      }
    >>
  }
  \pageBreak
  \score { % chants donnés
    \header {
      title = ##f
      subtitle = ##f
      piece=\markup { \bold "Chants donnés" }
    }
    \new StaffGroup <<
      \new Staff \with { instrumentName = "S."} \relative c'' {
        \set Staff.explicitKeySignatureVisibility = #begin-of-line-visible
        \override Staff.KeyCancellation.break-visibility = #all-invisible
        \override Staff.TimeSignature.break-visibility = #end-of-line-invisible
        \clef treble
        \mark \markup { \bold "76" }
        \key c \major \time 3/4 e4 d c b2 c4 a f' d c2 b4 c d e g e c c2 b4 c2. \bar "||" \break
        \mark \markup { \bold "77" }
        \key bf \major \time 4/4 bf2 d4 bf c2 a4 g fs2 g4 a g2 fs g bf4 g ef ef' c a g2 fs g1 \bar "||" \break
        \mark \markup { \bold "78" }
        \key a \major \time 4/4 cs2 b4 a fs e a cs e2 cs4 d cs2 b4 r4 e2 d4 cs d b gs a fs fs' d b a gs a2 \bar "||" \break
        \mark \markup { \bold "79" }
        \key f \major \time 3/4 f'2 e4 d2 e4 cs d bf a2. g4 a bf d e f e d cs d2. \bar "||" \break
        \mark \markup { \bold "80" }
        \key af \major \time 4/4 c4 bf af f ef2 af4 bf c ef c df ef2~ ef4 r4 f4 ef df ef c2 df4 bf af2 g af1 \bar "||" \break
        \mark \markup { \bold "81" }
        \key a \major \time 2/4 fs'4 es fs d cs b cs2 cs4 a b gs fs2 es fs4 gs a gs fs es fs2~ fs4 cs' fs, gs es2 fs \bar "||" \break
        \mark \markup { \bold "82" }
        \key g \major \time 4/4 b4 c b d g, a g b e, g a b b c d2 g4 e d c d b c d e g e c b a g2 \bar "||" \break
        \mark \markup { \bold "83" }
        \key e \major \time 6/8 e'4 bs8 cs4 ds8 e4 fs8 e4 ds8 gs e cs cs4 ds8 cs4. bs4 r8 cs4 ds8 e4 bs8 cs4 a8 gs4 e8 fs4 ds8 cs4 bs8 cs4.~ cs4 r8 \bar "||" \break
        \mark \markup { \bold "84" }
        \key c \major \time 2/4 c'4 b a g c d e2 f4 e d e c d b2 c4 b a g a c d e f2 e4 d c b c2 \bar "||" \break
        \mark \markup { \bold "85" }
        \key d \major \time 3/2 b2 as b e d e fs b, cs b1 as2 b cs d g, fs e fs b d fs d b g e fs g b e d1 cs2 b1. \bar "||" \break
        \mark \markup { \bold "86" }
        \key e \major \time 4/4 gs4 a gs cs b a b gs a fs e ds e2 ds4 r4 ds gs e cs' b a b gs a b cs fs e ds e2 \bar "||" \break
        \mark \markup { \bold "87" }
        \key f \major \time 9/8 a,4 bf8 a4 c8 a4 g8 f4 g8 f4 a8 f4 e8 d4 f8 g4 a8 bf4 d8 c4.~ c4 r8 d4 f8 d4 c8 bf4 c8 a4 bf8 c4 r8 a4 bf8 c4 a8 f4 g8 e4 f8 f4 e8 f4.~ f4 r8 r4 r8 \bar "||" \break
        \mark \markup { \bold "88" }
        \key f \major \time 3/4 f'2 d4 bf a g a d e f a f g f e d2 cs4 d2 d4 d e f bf,2 d4 bf g e cs2 d4 d f e d2 cs4 d2. \bar "||" \break
        \mark \markup { \bold "89" }
        \key af \major \time 4/4 c'4df c bf af f' ef af f ef df ef c bf8 af af4 g8 r8 af2. bf4 c df ef c df ef f d8 bf af4 g af2 \bar "||" \break
        \mark \markup { \bold "90" }
        \key g \major \time 6/8 g4 g8 g4 c8 d4 d8 d4 g8 e4 d8 c4 a8 g4. fs4 r8 g4 g8 g4 g8 a4. g4 r8 b4 b8 b4 b8 c4. b4 r8 d4 d8 b4 d8 g4 g8 e4 d8 c4 b8 a4 g8 a4 c8 b4 a8 g4 fs8 g4 b8 d4 d8 d4 r8 \bar "||" \break
      }
      \new Staff \with { instrumentName = "A."} {
        \set Staff.explicitKeySignatureVisibility = #begin-of-line-visible
        \override Staff.KeyCancellation.break-visibility = #all-invisible
        \override Staff.TimeSignature.break-visibility = #end-of-line-invisible
        \clef treble
        \key c \major \time 3/4 \repeat unfold 8 { s2. } \bar "||" \break
        \key bf \major \time 4/4 \repeat unfold 8 { s1 } \bar "||" \break
        \key a \major \time 4/4 \repeat unfold 8 { s1 } \bar "||" \break
        \key f \major \time 3/4 \repeat unfold 8 { s2. } \bar "||" \break
        \key af \major \time 4/4 \repeat unfold 8 { s1 } \bar "||" \break
        \key a \major \time 2/4 \repeat unfold 16 { s2 } \bar "||" \break
        \key g \major \time 4/4 \repeat unfold 8 { s1 } \bar "||" \break
        \key e \major \time 6/8 \repeat unfold 8 { s2. } \bar "||" \break
        \key c \major \time 2/4 \repeat unfold 16 { s2 } \bar "||" \break
        \key d \major \time 3/2 \repeat unfold 12 { s1. } \bar "||" \break
        \key e \major \time 4/4 \repeat unfold 8 { s1 } \bar "||" \break
        \key f \major \time 9/8 \repeat unfold 8 { s4. s4. s4. } \bar "||" \break
        \key f \major \time 3/4 \repeat unfold 14 { s2. } \bar "||" \break
        \key af \major \time 4/4 \repeat unfold 8 { s1 } \bar "||" \break
        \key g \major \time 6/8 \repeat unfold 14 { s2. } \bar "||" \break
      }
      \new Staff \with { instrumentName = "T."} {
        \set Staff.explicitKeySignatureVisibility = #begin-of-line-visible
        \override Staff.KeyCancellation.break-visibility = #all-invisible
        \override Staff.TimeSignature.break-visibility = #end-of-line-invisible
        \clef "treble_8"
        \key c \major \time 3/4 \repeat unfold 8 { s2. } \bar "||" \break
        \key bf \major \time 4/4 \repeat unfold 8 { s1 } \bar "||" \break
        \key a \major \time 4/4 \repeat unfold 8 { s1 } \bar "||" \break
        \key f \major \time 3/4 \repeat unfold 8 { s2. } \bar "||" \break
        \key af \major \time 4/4 \repeat unfold 8 { s1 } \bar "||" \break
        \key a \major \time 2/4 \repeat unfold 16 { s2 } \bar "||" \break
        \key g \major \time 4/4 \repeat unfold 8 { s1 } \bar "||" \break
        \key e \major \time 6/8 \repeat unfold 8 { s2. } \bar "||" \break
        \key c \major \time 2/4 \repeat unfold 16 { s2 } \bar "||" \break
        \key d \major \time 3/2 \repeat unfold 12 { s1. } \bar "||" \break
        \key e \major \time 4/4 \repeat unfold 8 { s1 } \bar "||" \break
        \key f \major \time 9/8 \repeat unfold 8 { s4. s4. s4. } \bar "||" \break
        \key f \major \time 3/4 \repeat unfold 14 { s2. } \bar "||" \break
        \key af \major \time 4/4 \repeat unfold 8 { s1 } \bar "||" \break
        \key g \major \time 6/8 \repeat unfold 14 { s2. } \bar "||" \break
      }
      \new Staff \with { instrumentName = "B."} {
        \set Staff.explicitKeySignatureVisibility = #begin-of-line-visible
        \override Staff.KeyCancellation.break-visibility = #all-invisible
        \override Staff.TimeSignature.break-visibility = #end-of-line-invisible
        \clef bass
        \key c \major \time 3/4 \repeat unfold 8 { s2. } \bar "||" \break
        \key bf \major \time 4/4 \repeat unfold 8 { s1 } \bar "||" \break
        \key a \major \time 4/4 \repeat unfold 8 { s1 } \bar "||" \break
        \key f \major \time 3/4 \repeat unfold 8 { s2. } \bar "||" \break
        \key af \major \time 4/4 \repeat unfold 8 { s1 } \bar "||" \break
        \key a \major \time 2/4 \repeat unfold 16 { s2 } \bar "||" \break
        \key g \major \time 4/4 \repeat unfold 8 { s1 } \bar "||" \break
        \key e \major \time 6/8 \repeat unfold 8 { s2. } \bar "||" \break
        \key c \major \time 2/4 \repeat unfold 16 { s2 } \bar "||" \break
        \key d \major \time 3/2 \repeat unfold 12 { s1. } \bar "||" \break
        \key e \major \time 4/4 \repeat unfold 8 { s1 } \bar "||" \break
        \key f \major \time 9/8 \repeat unfold 8 { s4. s4. s4. } \bar "||" \break
        \key f \major \time 3/4 \repeat unfold 14 { s2. } \bar "||" \break
        \key af \major \time 4/4 \repeat unfold 8 { s1 } \bar "||" \break
        \key g \major \time 6/8 \repeat unfold 14 { s2. } \bar "||" \break
      }
    >>
    \layout { \context { \Score \omit BarNumber } ragged-last = ##f }
  }
}
}