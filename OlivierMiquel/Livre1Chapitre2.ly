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
  subtitle = "Livre 1, chapitre 2"
  tagline = ""
}
\paper {
  #(include-special-characters)
  print-all-headers = ##t
  max-systems-per-page = 4
}
#(set-global-staff-size 24)
#(set-default-paper-size "a4landscape")

\score { % mode majeur
  \header {
    title = ##f
    subtitle = ##f
    piece = "exercice 2.8"
    opus = "mode majeur"
  }
  \new StaffGroup <<
    \new Staff \relative c' {
      \set Staff.explicitKeySignatureVisibility = #begin-of-line-visible
      \override Staff.KeyCancellation.break-visibility = #all-invisible
      \override Staff.TimeSignature.break-visibility = #end-of-line-invisible
      \clef alto
      \key c \major \time 2/2 c1 a b d e f d c \bar "||" \break
      \key c \major \time 2/2 \repeat unfold 8 { s1 } \bar "||" \break
    }
    \new Staff  \relative c {
      \set Staff.explicitKeySignatureVisibility = #begin-of-line-visible
      \override Staff.KeyCancellation.break-visibility = #all-invisible
      \override Staff.TimeSignature.break-visibility = #end-of-line-invisible
      \clef bass
      \key c \major \time 2/2 \repeat unfold 8 { s1 } \bar "||" \break
      \key c \major \time 2/2 c1 a b d e f d c \bar "||" \break
    }
  >>
} % mode majeur
\score { % mode de ré
  \header {
    title = ##f
    subtitle = ##f
    piece = ##f
    opus = "mode de ré"
  }
  \new StaffGroup <<
    \new Staff \relative c' {
      \set Staff.explicitKeySignatureVisibility = #begin-of-line-visible
      \override Staff.KeyCancellation.break-visibility = #all-invisible
      \override Staff.TimeSignature.break-visibility = #end-of-line-invisible
      \clef soprano
      \key c \major \time 2/2 d1 f g a e g f e c d \bar "||" \break
      \key c \major \time 2/2 \repeat unfold 10 { s1 } \bar "||" \break
    }
    \new Staff  \relative c {
      \set Staff.explicitKeySignatureVisibility = #begin-of-line-visible
      \override Staff.KeyCancellation.break-visibility = #all-invisible
      \override Staff.TimeSignature.break-visibility = #end-of-line-invisible
      \clef bass
      \key c \major \time 2/2 \repeat unfold 10 { s1 } \bar "||" \break
      \key c \major \time 2/2 d1 f g a e g f e c d \bar "||" \break
    }
  >>
} % mode de ré
\score { % mode de La, ou mode mineur
  \header {
    title = ##f
    subtitle = ##f
    piece = ##f
    opus = "mode de la, ou mode mineur"
  }
  \new StaffGroup <<
    \new Staff \relative c' {
      \set Staff.explicitKeySignatureVisibility = #begin-of-line-visible
      \override Staff.KeyCancellation.break-visibility = #all-invisible
      \override Staff.TimeSignature.break-visibility = #end-of-line-invisible
      \clef alto
      \key c \major \time 2/2 a1 e' d c f e b d e c b e a, \bar "||" \break
      \key c \major \time 2/2 \repeat unfold 13 { s1 } \bar "||" \break
    }
    \new Staff  \relative c {
      \set Staff.explicitKeySignatureVisibility = #begin-of-line-visible
      \override Staff.KeyCancellation.break-visibility = #all-invisible
      \override Staff.TimeSignature.break-visibility = #end-of-line-invisible
      \clef bass
      \key c \major \time 2/2 \repeat unfold 13 { s1 } \bar "||" \break
      \key c \major \time 2/2 a1 e' d c f e b d e c b e a, \bar "||" \break
    }
  >>
} % mode de La, ou mode mineur
\score { % mode mineur
  \header {
    title = ##f
    subtitle = ##f
    piece = ##f
    opus = "mode mineur"
  }
  \new StaffGroup <<
    \new Staff \relative c' {
      \set Staff.explicitKeySignatureVisibility = #begin-of-line-visible
      \override Staff.KeyCancellation.break-visibility = #all-invisible
      \override Staff.TimeSignature.break-visibility = #end-of-line-invisible
      \clef alto
      \key g \major \time 2/2 e1 ds e c b g a b g fs e \bar "||" \break
      \transpose e a { \key g \major \time 2/2 \repeat unfold 11 { s1 } \bar "||" \break }
    }
    \new Staff \relative c {
      \set Staff.explicitKeySignatureVisibility = #begin-of-line-visible
      \override Staff.KeyCancellation.break-visibility = #all-invisible
      \override Staff.TimeSignature.break-visibility = #end-of-line-invisible
      \clef bass
      \key g \major \time 2/2 \repeat unfold 11 { s1 } \bar "||" \break
      \transpose e a { \key g \major \time 2/2 e1 ds e c b, g, a, b, g, fs, e, \bar "||" \break }
    }
  >>
} % mode mineur
\layout { \context { \Score \omit BarNumber } ragged-last = ##f }
