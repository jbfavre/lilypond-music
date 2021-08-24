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
  dedication = \markup{ \sans \small \italic \concat {"À mon ami le Marquis de " \bold { "H" \smallCaps eere } }}
  title = \markup{ \sans "Les plaintes d'Ariane"}
  subtitle = \markup{ \sans "N°6"}
  composer = \markup { \sans \right-column { "Musique de" \bold \concat { "J. B" \smallCaps éesau }}}
  poet = \markup { \sans \column { "Poésie de" \bold \concat { "Madame la Comtesse de N" \smallCaps oailles }}}
  tagline = \markup { \sans \concat { "Extrait de " \italic "20 mélodies pour chant et piano" " de J" \smallCaps oseph " B" \smallCaps éesau " - É" \smallCaps ditions " M" \smallCaps aurice " S" \smallCaps énart ", 1920"}}
}
\score {
  <<
    \new Staff \with {
      instrumentName = \markup{ \sans "Chant"}
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
      instrumentName = \markup{ \sans "Piano"}
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
