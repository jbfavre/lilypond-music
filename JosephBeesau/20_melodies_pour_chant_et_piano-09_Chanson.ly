\version "2.22.0"
\language "english"
\include "../libs/smallcaps.ily"
\paper {
  top-margin = 1 \cm
  bottom-margin = 1 \cm
  left-margin = 1 \cm
  right-margin = 1 \cm

  #(include-special-characters)
}
\header {
  dedication = \markup{ \small \italic \concat {"À Mademoiselle " \bold { "Marthe" "S" \smallCaps "urcouf" } }}
  title = "Chanson"
  subtitle = "N°9"
  composer = \markup { \right-column { "Musique de" \bold \concat { "J. B" \smallCaps éesau }}}
  poet = \markup { \column { "Poésie de" \bold \concat { "M.  M" \smallCaps æterlinck }}}
  tagline = \markup { \concat { "Extrait de " \italic "20 mélodies pour chant de piano" " de J. B" \smallCaps "éesau"}}
}
\score {
  <<
    \new Staff \with {
      instrumentName = "Chant"
    } {
      \clef treble
      \new Voice = "chant" {
        \relative c'' {
          \key gf \major
          \time 3/4
          r2.
        }
      }
    }
    \new Lyrics \lyricsto "chant" {
    }
    \new PianoStaff \with {
      instrumentName = "Piano"
    } <<
      \new Staff = "right" \with {
        midiInstrument = "acoustic grand"
      } {
        \clef treble
        \relative c'' { \voiceOne
          \key gf \major
          \time 3/4
          r2.
        }
      }
      \new Staff = "left" \with {
        midiInstrument = "acoustic grand"
      } {
        \clef bass \set Score.connectArpeggios = ##f
        \relative f {
          \key gf \major
          \time 3/4
          r2.
        }
      }
    >>
  >>
  \layout {
    #(layout-set-staff-size 17)
  }
}
