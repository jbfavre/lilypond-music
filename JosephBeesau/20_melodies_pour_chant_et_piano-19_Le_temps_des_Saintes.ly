\version "2.22.0"
\language "english"
\include "../libs/smallcaps.ily"
\paper {
  top-margin = 1 \cm
  bottom-margin = 1 \cm
  left-margin = 1 \cm
  right-margin = 1 \cm

  markup-system-spacing =
    #'((padding . 20)
       (basic-distance . 15)
       (minimum-distance . 20)
       (stretchability . 12))

  #(include-special-characters)
}
\header {
  dedication = \markup{ \small \italic \concat {"À Madame " \bold { J \smallCaps eanne " R" \smallCaps aunay } }}
  title = "Le temps des Saintes"
  subtitle = "N°19"
  composer = \markup { \right-column { "Musique de" \bold \concat { "J. B" \smallCaps éesau }}}
  poet = \markup { \column { "Poésie de" \bold \concat { A \smallCaps natole " L" \smallCaps e " B" \smallCaps raz }}}
  tagline = \markup { \concat { "Extrait de " \italic "20 mélodies pour chant et piano" " de J. B" \smallCaps "éesau"}}
}
\score {
  <<
    \new Staff \with {
      instrumentName = "Chant"
    } {
      \clef treble
      \new Voice = "chant" {
        \relative c'' {
          \key e \major
          \time 4/4
          r1
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
          \key e \major
          \time 4/4
          r1
        }
      }
      \new Staff = "left" \with {
        midiInstrument = "acoustic grand"
      } {
        \clef bass \set Score.connectArpeggios = ##f
        \relative f {
          \key e \major
          \time 4/4
          r1
        }
      }
    >>
  >>
  \layout {
    #(layout-set-staff-size 19)
  }
}
