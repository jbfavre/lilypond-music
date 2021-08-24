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
  dedication = \markup{ \small \italic \concat {"À " \bold { J \smallCaps ean " L" \smallCaps e " P" \smallCaps annetier " D" \smallCaps e " R" \smallCaps oissay } }}
  title = "Pâle et lente…"
  subtitle = "N°12"
  composer = \markup { \right-column { "Musique de" \bold \concat { "J. B" \smallCaps éesau }}}
  poet = \markup { \column { "Poésie de" \bold \concat { A \smallCaps ndré " R" \smallCaps ivoire }}}
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
          \key c \minor
          \time 9/8
          r2. r8
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
          \key c \minor
          \time 9/8
          r2. r8
        }
      }
      \new Staff = "left" \with {
        midiInstrument = "acoustic grand"
      } {
        \clef bass \set Score.connectArpeggios = ##f
        \relative f {
          \key c \minor
          \time 9/8
          r2. r8
        }
      }
    >>
  >>
  \layout {
    #(layout-set-staff-size 19)
  }
}
