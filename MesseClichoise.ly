\version "2.18.2"

#(set-global-staff-size 16)

setStaffElements = {
  \override Staff.Clef #'font-size = #-2
  \override Staff.TimeSignature #'font-size = #-1
  \override Staff.KeySignature #'font-size = #-1.5
  \override Staff.BarLine #'hair-thickness = #1
  \override Staff.BarLine #'thick-thickness = #5
  \override Staff.MultiMeasureRest #'font-size = #-1.5
}

turnOffMarkup = {
  \override DynamicText #'stencil = ##f
  \override Script #'stencil = ##f
  \override Hairpin #'stencil = ##f
  \override TextScript #'stencil = ##f
}

setNoteSize = {
  \override NoteHead #'font-size = #-1.5
  \override Script #'font-size = #-1.5
  \override Rest #'font-size = #-1.5
  \override Accidental #'font-size = #-1.5
  \override Dots #'font-size = #-1.5
  \override DynamicText #'font-size = #-1
}

setLyricSize = { \override LyricText #'font-size = #-1.5 }

global = {
  \key f \minor
  \time 2/4
}

\header {
  title = "Messe Clichoise"
  composer = "Jean Baptiste Favre"
  arranger = "Clichy - 2017"
  tagline = ##f
}

\paper {
  paper-width = 8.5\in
  paper-height = 11\in
  left-margin = 0.725\in
  right-margin = 0.725\in
  top-margin = 0.625\in
  bottom-margin = 0.625\in

  max-systems-per-page = #9
}

\markup { \vspace #1 }
\score {
  \header {
    piece = "Kyrie (pour soliste et chœur à 2 voix)"
  }
  \new GrandStaff <<
    \new Staff \with {
      instrumentName = \markup \column { "Chantre" }
    }
    <<
      \setStaffElements
      \global \clef treble
      \relative c' {
        f8 g aes4 aes8 bes c4 bes8 (aes) g g f2 | \break
        c'4 c  aes aes  bes8 (aes) g  f g2 | \break
        f8 g aes4 aes8 bes c4 bes8 (aes) g g a2
      }
      \addlyrics {
        Ky -- ri -- e Ky -- ri -- e E -- le -- i -- son
        Chri -- ste Chri -- ste E -- le -- i -- son
        Ky -- ri -- e Ky -- ri -- e E -- le -- i -- son
      }
    >>
    \new PianoStaff \with {
      instrumentName = \markup \column { "Chœur" }
      \override StaffSymbol #'ledger-line-thickness = #'(0.4 . 0.1)
    }
    <<
      \new Staff {
        \setStaffElements
        \global \clef treble
        \relative c' {
          f8   ees d4 des8 (des) aes (bes) c des bes ees f2
          f'8 (ees d4) des  f,8 (aes) bes (d) f (d) e2
          f8   ees d4 des8 des aes bes c (f,) bes (ees) c2
        }
        \addlyrics {
          Ky -- ri -- e Ky -- ri -- e E -- le -- i -- son
          Chri -- ste E -- le -- i -- son
          Ky -- ri -- e Ky -- ri -- e E -- le -- i -- son
        }
      }
      \new Staff {
        \setStaffElements
        \global \clef bass
        \relative c {
          f4 f4 ees ees c c f2
          aes4 bes f (des8 ees) bes4 b4 c2
          f8 (g) f ees des (c) des ees f (des) ees c f2
        }
        \addlyrics {
          Ky -- ri -- e E -- le -- i -- son
          Chri -- ste E -- le -- i -- son
          Ky -- ri -- e Ky -- ri -- e E -- le -- i -- son
        }
      }
    >>
  >>
  \layout { }
  \midi { \tempo 4 = 90 }
}
