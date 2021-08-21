\version "2.22.0"
\language "english"
\include "../libs/smallcaps.ily"
\paper {
  top-margin = 2 \cm
  bottom-margin = 2 \cm
  %left-margin = 2 \cm
  %right-margin = 2 \cm
  two-sided = ##t
  inner-margin = 2\cm
  binding-offset = 0.5\cm
  outer-margin = 1.5\cm

  #(include-special-characters)
}
\header {
  dedication = \markup{\concat {"À Madame " \bold { "de L" \smallCaps "annurien" }}}
  title = "Et s'il revenait un jour…"
  subtitle = "N°10"
  composer = \markup { \right-column { "Musique de" \bold \concat { "J. B" \smallCaps éesau }}}
  poet = \markup { \column { "Poésie de" \bold \concat { M \smallCaps aurice " M" \smallCaps aeterlinck }}}
  tagline = \markup { \concat { "Extrait de " \italic "20 mélodies pour chant de piano" " de J. B" \smallCaps "éesau"}}
}
\score {
  <<
    \new Staff \with {
      instrumentName = "Chant"
    } {
      \clef treble
      \new Voice {
        \relative c' {
          \key g \minor
          \time 3/4
          \tempo \markup { "Lent, avec tristesse"}
          R2.*3 \break
          R2. d8 d d d g8. d16 ef2 d8. c16 \break
          d8. c16 d8\( d\) r4\fermata^\markup{\italic court} R2. \time 4/4 r4 ef'8 ef d4 \tuplet 3/2 { d8 d a } \pageBreak

        }
      }
    }
    \new PianoStaff \with {
      instrumentName = "Piano"
    } <<
      \new Staff = "right" \with {
        midiInstrument = "acoustic grand"
      } {
        \clef treble
        <<
          \new Voice { \voiceOne
            \relative c'' {
              \key g \minor
              \time 3/4
              c1
            }
          }
          \new Voice { \voiceTwo
            \relative c' {
              \key g \minor
              \time 3/4
              c1
            }
          }
        >>
      }
      \new Staff = "left" \with {
        midiInstrument = "acoustic grand"
      } {
        \clef bass
        <<
          \new Voice { \voiceOne
            \relative f {
              \key g \minor
              \time 3/4
              c1
            }
          }
          \new Voice { \voiceTwo
            \relative f, {
              \key g \minor
              \time 3/4
              c1
            }
          }
        >>
      }
    >>
  >>
  \layout {}
}
