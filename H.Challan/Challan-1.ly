\version "2.18.2"
\language "english"

\header {
  tagline = ##f
}
\paper {
  #(include-special-characters)
  print-all-headers = ##t
}
#(set-global-staff-size 16)

\book {
  \header {
    title = "H. Challan"
    subtitle = "Recueil 1. Accords de 3 sons"
  }
\bookpart { % état fondamental
  \header {
    title = ##f
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
        \override Staff.KeySignature.break-visibility = #all-invisible
        \override Staff.TimeSignature.break-visibility = #begin-of-line-visible
        \override Staff.KeyCancellation.break-visibility = #all-invisible
        \clef treble
        \key a \major \time 3/4 cs4 b a gs a b cs2 d4 b2. a4 b cs d b a b2 gs4 a2.
        \key e \major \time 2/4 s2 s4 cs4 s2 s2 s4 cs4 cs4 s4 s4 cs4 s2
        \key c \minor \time 3/4 s2. s2. ef,2 s4 s2. s2. s4 d'4 s4 s2. s2.
        \key d \minor \time 4/4 s1 s1 s4 e,4 s4 g4 s2. f4 d'2 s2 d4 e s2
        \key c \major \time 3/2 c2 s2 a2 a1 s2 s2 c2 f2 s2 s2 s2 s2 s2 s2 d1 a2 s2 s2 s2 s2 s2 s2
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
        \override Staff.KeySignature.break-visibility = #all-invisible
        \override Staff.TimeSignature.break-visibility = #begin-of-line-visible
        \override Staff.KeyCancellation.break-visibility = #all-invisible
        \clef treble
        \key fs \minor \time 3/4 a'4 s4 fs4 s2. s2. s2. fs4 s2 s2. s2. s2.
        \key e \major \time 2/4 s2 s4 e4 s2 s2 s4 e4 a4 s4 s4 a4 s2
        \key c \minor \time 3/4 s2. s2. c,2 s4 s2. s2. s4 bf'4 s4 s2. s2.
        \key d \minor \time 4/4 s1 s1 s4 c,4 s4 e4 s2. f4 f2 s2 bf4 g s2
        \key c \major \time 3/2 e2 s2 c2 f1 s2 s2 a2 a2 s2 s2 s2 s2 s2 s2 f1 c2 s2 s2 s2 s2 s2 s2
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
        \override Staff.KeySignature.break-visibility = #all-invisible
        \override Staff.TimeSignature.break-visibility = #begin-of-line-visible
        \override Staff.KeyCancellation.break-visibility = #all-invisible
        \clef "treble_8"
        \key a \major \time 3/4 e4 s4 cs4 s2. s2. s2. cs4 s2 s2. s2. s2.
        \key e \major \time 2/4 s2 s4 cs4 s2 s2 s4 cs4 fs4 s4 s4 fs4 s2
        \key c \minor \time 3/4 s2. s2. g,2 s4 s2. s2. s4 g4 s4 s2. s2.
        \key d \minor \time 4/4 s1 s1 s4 a4 s4 c4 s2. a4 bf2 s2 bf4 c s2
        \key c \major \time 3/2 a2 s2 a2 d1 s2 s2 c2 d2 s2 s2 s2 s2 s2 s2 a1 a2 s2 s2 s2 s2 s2 s2
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
        \override Staff.KeySignature.break-visibility = #all-invisible
        \override Staff.TimeSignature.break-visibility = #begin-of-line-visible
        \override Staff.KeyCancellation.break-visibility = #all-invisible
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
  \score { % chants donnés
    \header {
      title = ##f
      subtitle = ##f
      piece=\markup { \bold "Chants donnés" }
    }
    \new StaffGroup <<
      \new Staff \with { instrumentName = "S."} \relative c'' {
        \override Staff.KeySignature.break-visibility = #all-invisible
        \override Staff.TimeSignature.break-visibility = #begin-of-line-visible
        \override Staff.KeyCancellation.break-visibility = #all-invisible
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
      \new Staff \with { instrumentName = "A."} \relative c' {
        \override Staff.KeySignature.break-visibility = #all-invisible
        \override Staff.TimeSignature.break-visibility = #begin-of-line-visible
        \override Staff.KeyCancellation.break-visibility = #all-invisible
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
      \new Staff \with { instrumentName = "T."} \relative c' {
        \override Staff.KeySignature.break-visibility = #all-invisible
        \override Staff.TimeSignature.break-visibility = #begin-of-line-visible
        \override Staff.KeyCancellation.break-visibility = #all-invisible
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
        \override Staff.KeySignature.break-visibility = #all-invisible
        \override Staff.TimeSignature.break-visibility = #begin-of-line-visible
        \override Staff.KeyCancellation.break-visibility = #all-invisible
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
    title = ##f
    subtitle = "B. Permier renversement"
  }
  \score { % basses données
    \header {
      title = ##f
      subtitle = ##f
      piece=\markup { \bold "Basses données" }
    }
    \new StaffGroup <<
      \new Staff \with { instrumentName = "S."} \relative c'' {
        \override Staff.KeySignature.break-visibility = #all-invisible
        \override Staff.TimeSignature.break-visibility = #begin-of-line-visible
        \override Staff.KeyCancellation.break-visibility = #all-invisible
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
        \key af \major \time 4/4 \partial 4 s4 \repeat unfold 7 { s1 }
        \key ef \major \time 2/4 \repeat unfold 12 { s2 }
        \key bf \major \time 6/8 \repeat unfold 7 { s2. }
        \key bf \major \time 2/4 \repeat unfold 16 { s2 }
        \key e \major \time 6/8 \repeat unfold 8 { s2. }
      }
      \new Staff \with { instrumentName = "A."} \relative c' {
        \override Staff.KeySignature.break-visibility = #all-invisible
        \override Staff.TimeSignature.break-visibility = #begin-of-line-visible
        \override Staff.KeyCancellation.break-visibility = #all-invisible
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
        \key af \major \time 4/4 \partial 4 s4 \repeat unfold 7 { s1 }
        \key ef \major \time 2/4 \repeat unfold 12 { s2 }
        \key bf \major \time 6/8 \repeat unfold 7 { s2. }
        \key bf \major \time 2/4 \repeat unfold 16 { s2 }
        \key e \major \time 6/8 \repeat unfold 8 { s2. }
      }
      \new Staff \with { instrumentName = "T."} \relative c' {
        \override Staff.KeySignature.break-visibility = #all-invisible
        \override Staff.TimeSignature.break-visibility = #begin-of-line-visible
        \override Staff.KeyCancellation.break-visibility = #all-invisible
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
        \key af \major \time 4/4 \partial 4 s4 \repeat unfold 7 { s1 }
        \key ef \major \time 2/4 \repeat unfold 12 { s2 }
        \key bf \major \time 6/8 \repeat unfold 7 { s2. }
        \key bf \major \time 2/4 \repeat unfold 16 { s2 }
        \key e \major \time 6/8 \repeat unfold 8 { s2. }
      }
      \new Staff \with { instrumentName = "B."} {
        \override Staff.KeySignature.break-visibility = #all-invisible
        \override Staff.TimeSignature.break-visibility = #begin-of-line-visible
        \override Staff.KeyCancellation.break-visibility = #all-invisible
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
          \new FiguredBass { \figuremode { \bassFigureExtendersOn  } }
          \new Voice { \repeat unfold 8 { s1 } \bar "||" \break }
        >>
        <<
          \mark \markup { \bold "37" }
          \key bf \major \time 2/4
          \new FiguredBass { \figuremode { \bassFigureExtendersOn  } }
          \new Voice { \repeat unfold 10 { s2 } \bar "||" \break }
        >>
        <<
          \mark \markup { \bold "38" }
          \key g \major \time 4/4
          \new FiguredBass { \figuremode { \bassFigureExtendersOn  } }
          \new Voice { \repeat unfold 10 { s1 } \bar "||" \break }
        >>
        <<
          \mark \markup { \bold "39" }
          \key a \major \time 3/2
          \new FiguredBass { \figuremode { \bassFigureExtendersOn  } }
          \new Voice { \repeat unfold 8 { s1. } \bar "||" \break }
        >>
        <<
          \mark \markup { \bold "40" }
          \key bf \major \time 2/4
          \new FiguredBass { \figuremode { \bassFigureExtendersOn  } }
          \new Voice { \partial 4 s4 \repeat unfold 8 { s2 } \bar "||" \break }
        >>
        <<
          \mark \markup { \bold "41" }
          \key af \major \time 4/4
          \new FiguredBass { \figuremode { \bassFigureExtendersOn  } }
          \new Voice { \partial 4 s4 \repeat unfold 7 { s1 } \bar "||" \break }
        >>
        <<
          \mark \markup { \bold "42" }
          \key ef \major \time 2/4
          \new FiguredBass { \figuremode { \bassFigureExtendersOn  } }
          \new Voice { \repeat unfold 12 { s2 } \bar "||" \break }
        >>
        <<
          \mark \markup { \bold "43" }
          \key bf \major \time 6/8
          \new FiguredBass { \figuremode { \bassFigureExtendersOn  } }
          \new Voice { \repeat unfold 7 { s2. } \bar "||" \break }
        >>
        <<
          \mark \markup { \bold "44" }
          \key bf \major \time 2/4
          \new FiguredBass { \figuremode { \bassFigureExtendersOn  } }
          \new Voice { \repeat unfold 16 { s2 } \bar "||" \break }
        >>
        <<
          \mark \markup { \bold "45" }
          \key e \major \time 6/8
          \new FiguredBass { \figuremode { \bassFigureExtendersOn  } }
          \new Voice { \repeat unfold 8 { s2. } \bar "||" \break }
        >>
      }
    >>
  }
  \score { % chants donnés
    \header {
      title = ##f
      subtitle = ##f
      piece=\markup { \bold "Chants donnés" }
    }
    \new StaffGroup <<
      \new Staff \with { instrumentName = "S."} \relative c'' {
        \override Staff.KeySignature.break-visibility = #all-invisible
        \override Staff.TimeSignature.break-visibility = #begin-of-line-visible
        \override Staff.KeyCancellation.break-visibility = #all-invisible
        \clef treble
        \mark \markup { \bold "46" }
        \key d \major
        \time 4/4
        s1 \bar "||" \break
        \mark \markup { \bold "47" }
        \key d \major
        \time 4/4
        s1 \bar "||" \break
        \mark \markup { \bold "48" }
        \key d \major
        \time 4/4
        s1 \bar "||" \break
        \mark \markup { \bold "49" }
        \key d \major
        \time 4/4
        s1 \bar "||" \break
        \mark \markup { \bold "50" }
        \key d \major
        \time 4/4
        s1 \bar "||" \break
        \mark \markup { \bold "51" }
        \key d \major
        \time 4/4
        s1 \bar "||" \break
        \mark \markup { \bold "52" }
        \key d \major
        \time 4/4
        s1 \bar "||" \break
        \mark \markup { \bold "53" }
        \key d \major
        \time 4/4
        s1 \bar "||" \break
        \mark \markup { \bold "54" }
        \key d \major
        \time 4/4
        s1 \bar "||" \break
        \mark \markup { \bold "55" }
        \key d \major
        \time 4/4
        s1 \bar "||" \break
        \mark \markup { \bold "56" }
        \key g \major
        \time 3/4
        b4 d b a2. g4 b g fs2. e2 d4 e2 g4 a c a fs2. g2 g4 d' g, a fs2. g2. \bar "||" \break
        \mark \markup { \bold "57" }
        \key d \major
        \time 4/4
        s1 \bar "||" \break
        \mark \markup { \bold "58" }
        \key d \major
        \time 4/4
        s1 \bar "||" \break
        \mark \markup { \bold "59" }
        \key d \major
        \time 4/4
        s1 \bar "||" \break
        \mark \markup { \bold "60" }
        \key d \major
        \time 4/4
        s1 \bar "||" \break
      }
      \new Staff \with { instrumentName = "A."} \relative c' {
        \override Staff.KeySignature.break-visibility = #all-invisible
        \override Staff.TimeSignature.break-visibility = #begin-of-line-visible
        \override Staff.KeyCancellation.break-visibility = #all-invisible
        \clef treble
        \key d \major
        \time 4/4
        s1
        \key d \major
        \time 4/4
        s1
        \key d \major
        \time 4/4
        s1
        \key d \major
        \time 4/4
        s1
        \key d \major
        \time 4/4
        s1
        \key d \major
        \time 4/4
        s1
        \key d \major
        \time 4/4
        s1
        \key d \major
        \time 4/4
        s1
        \key d \major
        \time 4/4
        s1
        \key d \major
        \time 4/4
        s1
        \key g \major
        \time 3/4
        s2. s2. s2. s2. s2. s2. s2. s2. s2. s2. s2. s2.
        \key d \major
        \time 4/4
        s1
        \key d \major
        \time 4/4
        s1
        \key d \major
        \time 4/4
        s1
        \key d \major
        \time 4/4
        s1
      }
      \new Staff \with { instrumentName = "T."} \relative c' {
        \override Staff.KeySignature.break-visibility = #all-invisible
        \override Staff.TimeSignature.break-visibility = #begin-of-line-visible
        \override Staff.KeyCancellation.break-visibility = #all-invisible
        \clef "treble_8"
        \key d \major
        \time 4/4
        s1
        \key d \major
        \time 4/4
        s1
        \key d \major
        \time 4/4
        s1
        \key d \major
        \time 4/4
        s1
        \key d \major
        \time 4/4
        s1
        \key d \major
        \time 4/4
        s1
        \key d \major
        \time 4/4
        s1
        \key d \major
        \time 4/4
        s1
        \key d \major
        \time 4/4
        s1
        \key d \major
        \time 4/4
        s1
        \key g \major
        \time 3/4
        s2. s2. s2. s2. s2. s2. s2. s2. s2. s2. s2. s2.
        \key d \major
        \time 4/4
        s1
        \key d \major
        \time 4/4
        s1
        \key d \major
        \time 4/4
        s1
        \key d \major
        \time 4/4
        s1
      }
      \new Staff \with { instrumentName = "B."} {
        \override Staff.KeySignature.break-visibility = #all-invisible
        \override Staff.TimeSignature.break-visibility = #begin-of-line-visible
        \override Staff.KeyCancellation.break-visibility = #all-invisible
        \clef bass
        \key d \major
        \time 4/4
        s1
        \key d \major
        \time 4/4
        s1
        \key d \major
        \time 4/4
        s1
        \key d \major
        \time 4/4
        s1
        \key d \major
        \time 4/4
        s1
        \key d \major
        \time 4/4
        s1
        \key d \major
        \time 4/4
        s1
        \key d \major
        \time 4/4
        s1
        \key d \major
        \time 4/4
        s1
        \key d \major
        \time 4/4
        s1
        \key g \major
        \time 3/4
        s2. s2. s2. s2. s2. s2. s2. s2. s2. s2. s2. s2.
        \key d \major
        \time 4/4
        s1
        \key d \major
        \time 4/4
        s1
        \key d \major
        \time 4/4
        s1
        \key d \major
        \time 4/4
        s1
      }
    >>
    \layout { \context { \Score \omit BarNumber } ragged-last = ##f }
  }
}
\bookpart { % deuxième renversement
  \header {
    title = ##f
    subtitle = "B. Deuxième renversement"
  }
  \score { % basses données
    \header {
      title = ##f
      subtitle = ##f
      piece=\markup { \bold "Basses données" }
    }
    \new StaffGroup <<
      \new Staff \with { instrumentName = "S."} \relative c'' {
        \override Staff.KeySignature.break-visibility = #all-invisible
        \override Staff.TimeSignature.break-visibility = #begin-of-line-visible
        \override Staff.KeyCancellation.break-visibility = #all-invisible
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
        \key af \major \time 4/4 \partial 4 s4 \repeat unfold 7 { s1 }
        \key ef \major \time 2/4 \repeat unfold 12 { s2 }
        \key bf \major \time 6/8 \repeat unfold 7 { s2. }
        \key bf \major \time 2/4 \repeat unfold 16 { s2 }
        \key e \major \time 6/8 \repeat unfold 8 { s2. }
      }
      \new Staff \with { instrumentName = "A."} \relative c' {
        \override Staff.KeySignature.break-visibility = #all-invisible
        \override Staff.TimeSignature.break-visibility = #begin-of-line-visible
        \override Staff.KeyCancellation.break-visibility = #all-invisible
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
        \key af \major \time 4/4 \partial 4 s4 \repeat unfold 7 { s1 }
        \key ef \major \time 2/4 \repeat unfold 12 { s2 }
        \key bf \major \time 6/8 \repeat unfold 7 { s2. }
        \key bf \major \time 2/4 \repeat unfold 16 { s2 }
        \key e \major \time 6/8 \repeat unfold 8 { s2. }
      }
      \new Staff \with { instrumentName = "T."} \relative c' {
        \override Staff.KeySignature.break-visibility = #all-invisible
        \override Staff.TimeSignature.break-visibility = #begin-of-line-visible
        \override Staff.KeyCancellation.break-visibility = #all-invisible
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
        \key af \major \time 4/4 \partial 4 s4 \repeat unfold 7 { s1 }
        \key ef \major \time 2/4 \repeat unfold 12 { s2 }
        \key bf \major \time 6/8 \repeat unfold 7 { s2. }
        \key bf \major \time 2/4 \repeat unfold 16 { s2 }
        \key e \major \time 6/8 \repeat unfold 8 { s2. }
      }
      \new Staff \with { instrumentName = "B."} {
        \override Staff.KeySignature.break-visibility = #all-invisible
        \override Staff.TimeSignature.break-visibility = #begin-of-line-visible
        \override Staff.KeyCancellation.break-visibility = #all-invisible
        \clef bass
        <<
          \mark \markup { \bold "61" }
          \key f \major
          \time 2/4
          \new FiguredBass { \figuremode { \bassFigureExtendersOn  } }
          \new Voice { \repeat unfold 8 { s2 } \bar "||" \break }
        >>
        <<
          \mark \markup { \bold "62" }
          \key c \major
          \time 4/4
          \new FiguredBass { \figuremode { \bassFigureExtendersOn  } }
          \new Voice { \repeat unfold 8 { s1 } \bar "||" \break }
        >>
        <<
          \mark \markup { \bold "63" }
          \key f \major
          \time 3/4
          \new FiguredBass { \figuremode { \bassFigureExtendersOn  } }
          \new Voice { \repeat unfold 8 { s2. } \bar "||" \break }
        >>
        <<
          \mark \markup { \bold "64" }
          \key d \major \time 2/4
          \new FiguredBass { \figuremode { \bassFigureExtendersOn  } }
          \new Voice { \repeat unfold 8 { s2 } \bar "||" \break }
        >>
        <<
          \mark \markup { \bold "65" }
          \key af \major \time 3/4
          \new FiguredBass { \figuremode { \bassFigureExtendersOn  } }
          \new Voice { \repeat unfold 8 { s2. } \bar "||" \break }
        >>
        <<
          \mark \markup { \bold "66" }
          \key f \major \time 4/4
          \new FiguredBass { \figuremode { \bassFigureExtendersOn  } }
          \new Voice { \repeat unfold 8 { s1 } \bar "||" \break }
        >>
        <<
          \mark \markup { \bold "67" }
          \key bf \major \time 2/4
          \new FiguredBass { \figuremode { \bassFigureExtendersOn  } }
          \new Voice { \repeat unfold 10 { s2 } \bar "||" \break }
        >>
        <<
          \mark \markup { \bold "68" }
          \key g \major \time 4/4
          \new FiguredBass { \figuremode { \bassFigureExtendersOn  } }
          \new Voice { \repeat unfold 10 { s1 } \bar "||" \break }
        >>
        <<
          \mark \markup { \bold "69" }
          \key a \major \time 3/2
          \new FiguredBass { \figuremode { \bassFigureExtendersOn  } }
          \new Voice { \repeat unfold 8 { s1. } \bar "||" \break }
        >>
        <<
          \mark \markup { \bold "70" }
          \key bf \major \time 2/4
          \new FiguredBass { \figuremode { \bassFigureExtendersOn  } }
          \new Voice { \partial 4 s4 \repeat unfold 8 { s2 } \bar "||" \break }
        >>
        <<
          \mark \markup { \bold "71" }
          \key af \major \time 4/4
          \new FiguredBass { \figuremode { \bassFigureExtendersOn  } }
          \new Voice { \partial 4 s4 \repeat unfold 7 { s1 } \bar "||" \break }
        >>
        <<
          \mark \markup { \bold "72" }
          \key ef \major \time 2/4
          \new FiguredBass { \figuremode { \bassFigureExtendersOn  } }
          \new Voice { \repeat unfold 12 { s2 } \bar "||" \break }
        >>
        <<
          \mark \markup { \bold "73" }
          \key bf \major \time 6/8
          \new FiguredBass { \figuremode { \bassFigureExtendersOn  } }
          \new Voice { \repeat unfold 7 { s2. } \bar "||" \break }
        >>
        <<
          \mark \markup { \bold "74" }
          \key bf \major \time 2/4
          \new FiguredBass { \figuremode { \bassFigureExtendersOn  } }
          \new Voice { \repeat unfold 16 { s2 } \bar "||" \break }
        >>
        <<
          \mark \markup { \bold "75" }
          \key e \major \time 6/8
          \new FiguredBass { \figuremode { \bassFigureExtendersOn  } }
          \new Voice { \repeat unfold 8 { s2. } \bar "||" \break }
        >>
      }
    >>
  }
  \score { % chants donnés
    \header {
      title = ##f
      subtitle = ##f
      piece=\markup { \bold "Chants donnés" }
    }
    \new StaffGroup <<
      \new Staff \with { instrumentName = "S."} \relative c'' {
        \override Staff.KeySignature.break-visibility = #all-invisible
        \override Staff.TimeSignature.break-visibility = #begin-of-line-visible
        \override Staff.KeyCancellation.break-visibility = #all-invisible
        \clef treble
        \mark \markup { \bold "76" }
        \key d \major
        \time 4/4
        s1 \bar "||" \break
        \mark \markup { \bold "77" }
        \key d \major
        \time 4/4
        s1 \bar "||" \break
        \mark \markup { \bold "78" }
        \key d \major
        \time 4/4
        s1 \bar "||" \break
        \mark \markup { \bold "79" }
        \key d \major
        \time 4/4
        s1 \bar "||" \break
        \mark \markup { \bold "80" }
        \key d \major
        \time 4/4
        s1 \bar "||" \break
        \mark \markup { \bold "81" }
        \key d \major
        \time 4/4
        s1 \bar "||" \break
        \mark \markup { \bold "82" }
        \key d \major
        \time 4/4
        s1 \bar "||" \break
        \mark \markup { \bold "83" }
        \key d \major
        \time 4/4
        s1 \bar "||" \break
        \mark \markup { \bold "84" }
        \key d \major
        \time 4/4
        s1 \bar "||" \break
        \mark \markup { \bold "85" }
        \key d \major
        \time 4/4
        s1 \bar "||" \break
        \mark \markup { \bold "86" }
        \key g \major
        \time 4/4
        s1 \bar "||" \break
        \mark \markup { \bold "87" }
        \key d \major
        \time 4/4
        s1 \bar "||" \break
        \mark \markup { \bold "88" }
        \key d \major
        \time 4/4
        s1 \bar "||" \break
        \mark \markup { \bold "89" }
        \key d \major
        \time 4/4
        s1 \bar "||" \break
        \mark \markup { \bold "90" }
        \key d \major
        \time 4/4
        s1 \bar "||" \break
      }
      \new Staff \with { instrumentName = "A."} \relative c' {
        \override Staff.KeySignature.break-visibility = #all-invisible
        \override Staff.TimeSignature.break-visibility = #begin-of-line-visible
        \override Staff.KeyCancellation.break-visibility = #all-invisible
        \clef treble
        \key d \major
        \time 4/4
        s1
        \key d \major
        \time 4/4
        s1
        \key d \major
        \time 4/4
        s1
        \key d \major
        \time 4/4
        s1
        \key d \major
        \time 4/4
        s1
        \key d \major
        \time 4/4
        s1
        \key d \major
        \time 4/4
        s1
        \key d \major
        \time 4/4
        s1
        \key d \major
        \time 4/4
        s1
        \key d \major
        \time 4/4
        s1
        \key g \major
        \time 4/4
        s1
        \key d \major
        \time 4/4
        s1
        \key d \major
        \time 4/4
        s1
        \key d \major
        \time 4/4
        s1
        \key d \major
        \time 4/4
        s1
      }
      \new Staff \with { instrumentName = "T."} \relative c' {
        \override Staff.KeySignature.break-visibility = #all-invisible
        \override Staff.TimeSignature.break-visibility = #begin-of-line-visible
        \override Staff.KeyCancellation.break-visibility = #all-invisible
        \clef "treble_8"
        \key d \major
        \time 4/4
        s1
        \key d \major
        \time 4/4
        s1
        \key d \major
        \time 4/4
        s1
        \key d \major
        \time 4/4
        s1
        \key d \major
        \time 4/4
        s1
        \key d \major
        \time 4/4
        s1
        \key d \major
        \time 4/4
        s1
        \key d \major
        \time 4/4
        s1
        \key d \major
        \time 4/4
        s1
        \key d \major
        \time 4/4
        s1
        \key g \major
        \time 4/4
        s1
        \key d \major
        \time 4/4
        s1
        \key d \major
        \time 4/4
        s1
        \key d \major
        \time 4/4
        s1
        \key d \major
        \time 4/4
        s1
      }
      \new Staff \with { instrumentName = "B."} {
        \override Staff.KeySignature.break-visibility = #all-invisible
        \override Staff.TimeSignature.break-visibility = #begin-of-line-visible
        \override Staff.KeyCancellation.break-visibility = #all-invisible
        \clef bass
        \key d \major
        \time 4/4
        s1
        \key d \major
        \time 4/4
        s1
        \key d \major
        \time 4/4
        s1
        \key d \major
        \time 4/4
        s1
        \key d \major
        \time 4/4
        s1
        \key d \major
        \time 4/4
        s1
        \key d \major
        \time 4/4
        s1
        \key d \major
        \time 4/4
        s1
        \key d \major
        \time 4/4
        s1
        \key d \major
        \time 4/4
        s1
        \key g \major
        \time 4/4
        s1
        \key d \major
        \time 4/4
        s1
        \key d \major
        \time 4/4
        s1
        \key d \major
        \time 4/4
        s1
        \key d \major
        \time 4/4
        s1
      }
    >>
    \layout { \context { \Score \omit BarNumber } ragged-last = ##f }
  }
}
}