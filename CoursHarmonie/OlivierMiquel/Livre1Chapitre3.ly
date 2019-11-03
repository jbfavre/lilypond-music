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
  subtitle = "Livre 1, chapitre 3"
  tagline = ""
}
\paper {
  #(include-special-characters)
  print-all-headers = ##t
  max-systems-per-page = 8
}
%#(set-global-staff-size 24)
%#(set-default-paper-size "a4landscape")

\score {
  \header {
    title = ##f
    subtitle = ##f
    piece = "exercice 3.4"
  }
  \new StaffGroup <<
    \new Staff \relative c' {
      \set Staff.explicitKeySignatureVisibility = #all-visible
      \override Staff.KeyCancellation.break-visibility = #all-invisible
      \clef treble \time 4/4
      \key ef \major ef1 bf'1 af1 c1 c1 g'1 \bar "||"
    }
    \new Staff \relative c' {
      \set Staff.explicitKeySignatureVisibility = #all-visible
      \override Staff.KeyCancellation.break-visibility = #all-invisible
      \clef treble \time 4/4
      \key ef \major bf1 g'1 ef1 af1 g1 c1 \bar "||"
    }
    \new Staff \relative c' {
      \set Staff.explicitKeySignatureVisibility = #all-visible
      \override Staff.KeyCancellation.break-visibility = #all-invisible
      \clef  "treble_8" \time 4/4
      \key ef \major g1 ef'1 c1 ef1 ef1 ef1 \bar "||"
    }
    \new Staff  \relative c {
      \set Staff.explicitKeySignatureVisibility = #all-visible
      \override Staff.KeyCancellation.break-visibility = #all-invisible
      \clef bass \time 4/4
      \key ef \major ef1 ef1 af1 af1 c1 c,1 \bar "||"
    }
  >>
}
\score {
  \header {
    title = ##f
    subtitle = ##f
    piece = "exercice 3.4"
  }
  \new StaffGroup <<
    \new Staff \relative c' {
      \set Staff.explicitKeySignatureVisibility = #all-visible
      \override Staff.KeyCancellation.break-visibility = #all-invisible
      \clef treble \time 4/4
      \key fs \minor fs1 a1 gs1 b1 cs1 gs1
    }
    \new Staff \relative c' {
      \set Staff.explicitKeySignatureVisibility = #all-visible
      \override Staff.KeyCancellation.break-visibility = #all-invisible
      \clef treble \time 4/4
      \key fs \minor cs1 cs1 d1 d1 gs1 cs1
    }
    \new Staff \relative c' {
      \set Staff.explicitKeySignatureVisibility = #all-visible
      \override Staff.KeyCancellation.break-visibility = #all-invisible
      \clef  "treble_8" \time 4/4
      \key fs \minor a1 fs1 b1 gs1 e1 e'1
    }
    \new Staff  \relative c {
      \set Staff.explicitKeySignatureVisibility = #all-visible
      \override Staff.KeyCancellation.break-visibility = #all-invisible
      \clef bass \time 4/4
      \key fs \minor fs1 fs,1 gs'1 gs,1 cs1 cs1
    }
  >>
}
\score {
  \header {
    title = ##f
    subtitle = ##f
    piece = "exercice 3.7"
  }
  \new StaffGroup <<
    \new Staff \relative c'' {
      \set Staff.explicitKeySignatureVisibility = #all-visible
      \override Staff.KeyCancellation.break-visibility = #all-invisible
      \clef treble \time 4/4
      \key f \major a2 bf4 c a2 bf4 c a d2 e4 f2. e4 e1 f1
      \bar "|."
    }
    \new Staff \relative c' {
      \set Staff.explicitKeySignatureVisibility = #all-visible
      \override Staff.KeyCancellation.break-visibility = #all-invisible
      \clef treble \time 4/4
      \key f \major f2 d4 e f2 d4 e f f bf g a2. c4 g1 a1
      \bar "|."
    }
    \new Staff  \relative c {
      \set Staff.explicitKeySignatureVisibility = #all-visible
      \override Staff.KeyCancellation.break-visibility = #all-invisible
      \clef bass \time 4/4
      \key f \major f2 g4 c, f2 g4 c, d bf g c f,2 d'4 a c1 f1
      \bar "|."
    }
  >>
}
\score {
  \header {
    title = ##f
    subtitle = ##f
    piece = "exercice 3.8 - A"
  }
  \new ChoirStaff
  <<
    \new Staff
    <<
      \clef treble \time 2/2 \key g \major
      \new Voice << \relative c' { <d g>2 s2 s1 } >>
    >>
    \new Staff
    <<
      \clef "bass" \time 2/2 \key g \major
      \new Voice <<
        \relative f {
          <g b>2 c,4 d g,2 r2 \bar "||"
        }
      >>
    >>
  >>
}

\score {
  \header {
    title = ##f
    subtitle = ##f
    piece = "exercice 3.8 - B"
  }
  \new ChoirStaff
  <<
    \new Staff
    <<
      \clef treble \time 2/2 \key bf \major
      \new Voice << \relative c' { <f bf>2 s2 s1 s1 } >>
    >>
    \new Staff
    <<
      \clef "bass" \time 2/2 \key bf \major
      \new Voice <<
        \relative f {
          <bf d>2 g ef f bf,1 \bar "||"
        }
      >>
    >>
  >>
}
\score {
  \header {
    title = ##f
    subtitle = ##f
    piece = "exercice 3.8 - C"
  }
  \new ChoirStaff
  <<
    \new Staff
    <<
      \clef treble \time 4/4 \key a \minor
      \new Voice << \relative c'' { <a e'>2 s2 s1 } >>
    >>
    \new Staff
    <<
      \clef "bass" \time 4/4 \key a \minor
      \new Voice <<
        \relative f {
          <a c>2 f4 d e2 a,2 \bar "||"
        }
        \new FiguredBass {
          \figuremode {
            <_>1 <_+>2
          }
        }
      >>
    >>
  >>
}
\score {
  \header {
    title = ##f
    subtitle = ##f
    piece = "exercice 3.8 - D"
  }
  \new ChoirStaff
  <<
    \new Staff
    <<
      \clef treble \time 4/4 \key d \minor
      \new Voice << \relative c' { <e cs'>4 s1 s1 } >>
    >>
    \new Staff
    <<
      \clef "bass" \time 4/4 \key d \minor
      \new Voice <<
        \relative f {
          \partial 4 <a, a'>4 d2 bf a1 \fermata \bar "||"
        }
        \new FiguredBass {
          \figuremode {
            <_+>4 <_>1 <_+>1
          }
        }
      >>
    >>
  >>
}
\score {
  \header {
    title = ##f
    subtitle = ##f
    piece = "exercice 3.8 - E"
  }
  \new ChoirStaff
  <<
    \new Staff
    <<
      \clef treble \time 4/4 \key f \major
      \new Voice << \relative c'' { s1 s1 s1 } >>
    >>
    \new Staff
    <<
      \clef "bass" \time 4/4 \key f \major
      \new Voice <<
        \relative f {
          f2 c4 f bf, a g c f,2 r2 \bar "||"
        }
      >>
    >>
  >>
}
\score {
  \header {
    title = ##f
    subtitle = ##f
    piece = "exercice 3.8 - F"
  }
  \new ChoirStaff
  <<
    \new Staff
    <<
      \clef treble \time 3/4 \key g \minor
      \new Voice << \relative c'' { s2. s2. s2. s2. } >>
    >>
    \new Staff
    <<
      \clef "bass" \time 3/4 \key g \minor
      \new Voice <<
        \relative f {
          g4 g c, g' d g ef c d g,2. \bar "||"
        }
        \new FiguredBass {
          \figuremode {
            <_>2. <_>4 <_+> <_>4 <_>2 <_+>4
          }
        }
      >>
    >>
  >>
}
\score {
  \header {
    title = ##f
    subtitle = ##f
    piece = "exercice 3.8 - G"
  }
  \new ChoirStaff
  <<
    \new Staff
    <<
      \clef treble \time 3/8 \key b \major
      \new Voice << \relative c'' { s4. s4. s4. s4. } >>
    >>
    \new Staff
    <<
      \clef "bass" \time 3/8 \key b \major
      \new Voice <<
        \relative f {
          b4 fs8 gs4 ds8 e4 fs8 b,4. \bar "||"
        }
      >>
    >>
  >>
}
\score {
  \header {
    title = ##f
    subtitle = ##f
    piece = "exercice 3.8 - H"
  }
  \new ChoirStaff
  <<
    \new Staff
    <<
      \clef treble \time 3/4 \key e \minor
      \new Voice << \relative c'' { s2. s2. s2. } >>
    >>
    \new Staff
    <<
      \clef "bass" \time 3/4 \key e \minor
      \new Voice <<
        \relative f {
          e4 b e a fs b e,2 r4 \bar "||"
        }
        \new FiguredBass {
          \figuremode {
            <_> <_+> <_> <_> <_> <_+>
          }
        }
      >>
    >>
  >>
}
\score {
  \header {
    title = ##f
    subtitle = ##f
    piece = "exercice 3.8 - I"
  }
  \new ChoirStaff
  <<
    \new Staff
    <<
      \clef treble \time 3/2 \key af \major
      \new Voice << \relative c'' { s1. s1. s1. s1. s1. s1. s1. s1. s1. } >>
    >>
    \new Staff
    <<
      \clef "bass" \time 3/2 \key af \major
      \new Voice <<
        \relative f {
          af1 af2 f df1 bf c2 f1 r2 \break
          af,1 c2 df f bf, ef c ef af1 df,2 af1. \bar "||"
        }
      >>
    >>
  >>
}

\layout { \context { \Score \omit BarNumber } ragged-last = ##f }