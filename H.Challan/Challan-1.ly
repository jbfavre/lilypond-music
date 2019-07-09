\version "2.19.82"
\language "english"

\header {
  title = "H. Challan"
  subtitle = "Recueil 1. Accords de 3 sons"
  tagline = ##f
}
\paper {
  #(include-special-characters)
  print-all-headers = ##t
}
#(set-global-staff-size 16)

\score {
  \header {
    title = ##f
    subtitle = ##f
    subsubtitle = "A. À l'état fondamental"
    piece=\markup { \bold "Basses données" }
  }
  \new StaffGroup <<
    \new Staff \with { instrumentName = "S."} \relative c'' {
      \override Staff.KeySignature.break-visibility = #all-invisible
      \override Staff.TimeSignature.break-visibility = #begin-of-line-visible
      \override Staff.KeyCancellation.break-visibility = #all-invisible
      \clef treble
      \key a \major
      \time 3/4
      cs4 b a gs a b cs2 d4 b2. a4 b cs d b a b2 gs4 a2.
      \key e \major
      \time 2/4
      s2 s4 cs4 s2 s2 s4 cs4 cs4 s4 s4 cs4 s2
      \key c \minor
      \time 3/4
      s2. s2. ef,2 s4 s2. s2. s4 d'4 s4 s2. s2.
      \key d \minor
      \time 4/4
      s1 s1 s4 e,4 s4 g4 s2. f4 d'2 s2 d4 e s2
      \key c \major
      \time 3/2
      c2 s2 a2 a1 s2 s2 c2 f2 s2 s2 s2 s2 s2 s2 d1 a2 s2 s2 s2 s2 s2 s2
      \key bf \major
      \time 4/4
      s1 s1 s1 s1 s1 s1 s1 s1
      \key g \minor
      \time 2/4
      s2 s2 s2 s2 s2 s2 s2 s2
      \key bf \minor
      \time 6/8
      s2. s2. s2. s2. s2. s2. s2. s2.
      \key f \minor
      \time 2/4
      s2 s2 s2 s2 s2 s2 s2 s2
      \key g \major
      \time 3/2
      s1. s1. s1. s1. s1. s1. s1. s1.
      \key a \major
      \time 2/4
      s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 \bar "||" \break
      \key g \major
      \time 2/2
      s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 \bar "||" \break
      \key d \major
      \time 4/4
      s1 s1 s1 s1 s1 s1 s1 s1 \bar "||" \break
      \key f \major
      \time 3/4
      s2. s2. s2. s2. s2. s2. s2. s2. \bar "||" \break
      \key bf \major
      \time 6/8
      s2. s2. s2. s2. s2. s2. s2. s2. \bar "||" \break
    }
    \new Staff \with { instrumentName = "A."} \relative c' {
      \override Staff.KeySignature.break-visibility = #all-invisible
      \override Staff.TimeSignature.break-visibility = #begin-of-line-visible
      \override Staff.KeyCancellation.break-visibility = #all-invisible
      \clef treble
      \key fs \minor
      \time 3/4
      a'4 s4 fs4 s2. s2. s2. fs4 s2 s2. s2. s2.
      \key e \major
      \time 2/4
      s2 s4 e4 s2 s2 s4 e4 a4 s4 s4 a4 s2
      \key c \minor
      \time 3/4
      s2. s2. c,2 s4 s2. s2. s4 bf'4 s4 s2. s2.
      \key d \minor
      \time 4/4
      s1 s1 s4 c,4 s4 e4 s2. f4 f2 s2 bf4 g s2
      \key c \major
      \time 3/2
      e2 s2 c2 f1 s2 s2 a2 a2 s2 s2 s2 s2 s2 s2 f1 c2 s2 s2 s2 s2 s2 s2
      \key bf \major
      \time 4/4
      s1 s1 s1 s1 s1 s1 s1 s1
      \key g \minor
      \time 2/4
      s2 s2 s2 s2 s2 s2 s2 s2
      \key bf \minor
      \time 6/8
      s2. s2. s2. s2. s2. s2. s2. s2.
      \key f \minor
      \time 2/4
      s2 s2 s2 s2 s2 s2 s2 s2
      \key g \major
      \time 3/2
      s1. s1. s1. s1. s1. s1. s1. s1.
      \key a \major
      \time 2/4
      s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 \bar "||" \break
      \key g \major
      \time 2/2
      s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 \bar "||" \break
      \key d \major
      \time 4/4
      s1 s1 s1 s1 s1 s1 s1 s1 \bar "||" \break
      \key f \major
      \time 3/4
      s2. s2. s2. s2. s2. s2. s2. s2. \bar "||" \break
      \key bf \major
      \time 6/8
      s2. s2. s2. s2. s2. s2. s2. s2. \bar "||" \break
    }
    \new Staff \with { instrumentName = "T."} \relative c' {
      \override Staff.KeySignature.break-visibility = #all-invisible
      \override Staff.TimeSignature.break-visibility = #begin-of-line-visible
      \override Staff.KeyCancellation.break-visibility = #all-invisible
      \clef "treble_8"
      \key a \major
      \time 3/4
      e4 s4 cs4 s2. s2. s2. cs4 s2 s2. s2. s2.
      \key e \major
      \time 2/4
      s2 s4 cs4 s2 s2 s4 cs4 fs4 s4 s4 fs4 s2
      \key c \minor
      \time 3/4
      s2. s2. g,2 s4 s2. s2. s4 g4 s4 s2. s2.
      \key d \minor
      \time 4/4
      s1 s1 s4 a4 s4 c4 s2. a4 bf2 s2 bf4 c s2
      \key c \major
      \time 3/2
      a2 s2 a2 d1 s2 s2 c2 d2 s2 s2 s2 s2 s2 s2 a1 a2 s2 s2 s2 s2 s2 s2
      \key bf \major
      \time 4/4
      s1 s1 s1 s1 s1 s1 s1 s1
      \key g \minor
      \time 2/4
      s2 s2 s2 s2 s2 s2 s2 s2
      \key bf \minor
      \time 6/8
      s2. s2. s2. s2. s2. s2. s2. s2.
      \key f \minor
      \time 2/4
      s2 s2 s2 s2 s2 s2 s2 s2
      \key g \major
      \time 3/2
      s1. s1. s1. s1. s1. s1. s1. s1.
      \key a \major
      \time 2/4
      s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 \bar "||" \break
      \key g \major
      \time 2/2
      s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 s1 \bar "||" \break
      \key d \major
      \time 4/4
      s1 s1 s1 s1 s1 s1 s1 s1 \bar "||" \break
      \key f \major
      \time 3/4
      s2. s2. s2. s2. s2. s2. s2. s2. \bar "||" \break
      \key bf \major
      \time 6/8
      s2. s2. s2. s2. s2. s2. s2. s2. \bar "||" \break
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
\score {
  \header {
    title = ##f
    subtitle = ##f
    subsubtitle = ##f
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
      \key c \major
      \time 4/4
      s1 s1 s1 s1 s1 s1 s1
      \key a \major
      \time 2/4
      s2 s2 s2 s2 s2 s2 s2 s2
      \key f \major
      \time 3/4
      s2. s2. s2. s2. s2. s2. s2. s2. \bar "||" \break
      \key b \major
      \time 2/4
      s2 s2 s2 s2 s2 s2 s2 s2 \bar "||" \break
      \key d \minor
      \time 3/2
      s1. s1. s1. s1. s1. s1. s1. s1. \bar "||" \break
      \key bf \major
      \time 4/4
      s1 s1 s1 s1 s1 s1 s1 s1 \bar "||" \break
      \key c \major
      \time 4/4
      s1 s1 s1 s1 \bar "||" \break
      \key ef \major
      \time 6/8
      s2. s2. s2. s2. s2. s2. s2. s2. \bar "||" \break
      \key a \major
      \time 4/4
      s1 s1 s1 s1 s1 s1 s1 s1 \bar "||" \break
      \key gf \major
      \time 4/4
      s1 s1 s1 s1 s1 s1 s1 s1 \bar "||" \break
      \key df \major
      \time 3/2
      s1. s1. s1. s1. s1. s1. s1. s1. \bar "||" \break
      \key g \major
      \time 6/8
      s2. s2. s2. s2. s2. s2. s2. s2. \bar "||" \break
      \key af \major
      \time 4/4
      s1 s1 s1 s1 s1 s1 s1 s1 \bar "||" \break
      \key a \major
      \time 2/4
      s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 \bar "||" \break
      \key bf \major
      \time 4/4
      s1 s1 s1 s1 s1 s1 s1 s1 \bar "||" \break
    }
    \new Staff \with { instrumentName = "T."} \relative c' {
      \override Staff.KeySignature.break-visibility = #all-invisible
      \override Staff.TimeSignature.break-visibility = #begin-of-line-visible
      \override Staff.KeyCancellation.break-visibility = #all-invisible
      \clef "treble_8"
      \key c \major
      \time 4/4
      s1 s1 s1 s1 s1 s1 s1
      \key a \major
      \time 2/4
      s2 s2 s2 s2 s2 s2 s2 s2
      \key f \major
      \time 3/4
      s2. s2. s2. s2. s2. s2. s2. s2. \bar "||" \break
      \key b \major
      \time 2/4
      s2 s2 s2 s2 s2 s2 s2 s2 \bar "||" \break
      \key d \minor
      \time 3/2
      s1. s1. s1. s1. s1. s1. s1. s1. \bar "||" \break
      \key bf \major
      \time 4/4
      s1 s1 s1 s1 s1 s1 s1 s1 \bar "||" \break
      \key c \major
      \time 4/4
      s1 s1 s1 s1 \bar "||" \break
      \key ef \major
      \time 6/8
      s2. s2. s2. s2. s2. s2. s2. s2. \bar "||" \break
      \key a \major
      \time 4/4
      s1 s1 s1 s1 s1 s1 s1 s1 \bar "||" \break
      \key gf \major
      \time 4/4
      s1 s1 s1 s1 s1 s1 s1 s1 \bar "||" \break
      \key df \major
      \time 3/2
      s1. s1. s1. s1. s1. s1. s1. s1. \bar "||" \break
      \key g \major
      \time 6/8
      s2. s2. s2. s2. s2. s2. s2. s2. \bar "||" \break
      \key af \major
      \time 4/4
      s1 s1 s1 s1 s1 s1 s1 s1 \bar "||" \break
      \key a \major
      \time 2/4
      s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 \bar "||" \break
      \key bf \major
      \time 4/4
      s1 s1 s1 s1 s1 s1 s1 s1 \bar "||" \break
    }
    \new Staff \with { instrumentName = "B."} {
      \override Staff.KeySignature.break-visibility = #all-invisible
      \override Staff.TimeSignature.break-visibility = #begin-of-line-visible
      \override Staff.KeyCancellation.break-visibility = #all-invisible
      \clef bass
      \key c \major
      \time 4/4
      s1 s1 s1 s1 s1 s1 s1
      \key a \major
      \time 2/4
      s2 s2 s2 s2 s2 s2 s2 s2
      \key f \major
      \time 3/4
      s2. s2. s2. s2. s2. s2. s2. s2. \bar "||" \break
      \key b \major
      \time 2/4
      s2 s2 s2 s2 s2 s2 s2 s2 \bar "||" \break
      \key d \minor
      \time 3/2
      s1. s1. s1. s1. s1. s1. s1. s1. \bar "||" \break
      \key bf \major
      \time 4/4
      s1 s1 s1 s1 s1 s1 s1 s1 \bar "||" \break
      \key c \major
      \time 4/4
      s1 s1 s1 s1 \bar "||" \break
      \key ef \major
      \time 6/8
      s2. s2. s2. s2. s2. s2. s2. s2. \bar "||" \break
      \key a \major
      \time 4/4
      s1 s1 s1 s1 s1 s1 s1 s1 \bar "||" \break
      \key gf \major
      \time 4/4
      s1 s1 s1 s1 s1 s1 s1 s1 \bar "||" \break
      \key df \major
      \time 3/2
      s1. s1. s1. s1. s1. s1. s1. s1. \bar "||" \break
      \key g \major
      \time 6/8
      s2. s2. s2. s2. s2. s2. s2. s2. \bar "||" \break
      \key af \major
      \time 4/4
      s1 s1 s1 s1 s1 s1 s1 s1 \bar "||" \break
      \key a \major
      \time 2/4
      s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 s2 \bar "||" \break
      \key bf \major
      \time 4/4
      s1 s1 s1 s1 s1 s1 s1 s1 \bar "||" \break
    }
  >>
  \layout { \context { \Score \omit BarNumber } ragged-last = ##f }
}
