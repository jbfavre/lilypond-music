\version "2.18.2"

\header {
  piece = "Sanctus"
  date = "Juillet 2017"
}

\score {
  \new GrandStaff <<
    \new Staff \with {
      instrumentName = \markup \column { "Soliste" }
    } <<
      \key e \major
      \time 3/8
      \clef treble
      \new Voice = "soliste" {
        \relative c' {
          \tempo 4. = 50
          b'4 b8 cis4 b8 b (a gis) fis4.
          e8 fis gis a (gis) e e4 fis8 gis4.
        }
      }
      \new Lyrics \lyricsto "soliste" {
        \lyricmode {
          San -- ctus, San -- ctus, San -- ctus,
          Do -- mi -- nus De -- us Sab -- ba -- oth
        }
      }
    >>
    \new ChoirStaff \with {
      instrumentName = \markup {\left-align "Chœur"}
    } <<
      \new Staff \with {
        instrumentName = \markup {\right-align "voix 1"}
      } {
        \key e \major
        \time 3/8
        \clef treble
        \new Voice = "femmes" {
          \relative c' {
            gis'8 (fis) gis e4 e8 dis8 (cis4) dis4.
            a8 
            %b'8 a b cis a cis b (a16 gis16) a8 b4.
            }
        }
      }
      \new Lyrics \lyricsto "femmes" {
        \lyricmode {
          San -- ctus, San -- ctus, San -- ctus,
          Do %-- mi -- nus De -- us Sab -- ba -- oth
          }
      }
      \new Staff \with {
        instrumentName = \markup {\right-align "voix 2"}
      } {
        \key e \major
        \time 3/8
        \clef bass
        \new Voice = "hommes" {
          \relative c {
            e4 e8 a4 gis8 fis (e ais) b4.
            cis,8 b8 a gis dis' e a, b4 <e \parenthesize e,>4.
            }
        }
      }
      \new Lyrics \lyricsto "hommes" {
        \lyricmode {
          San -- ctus, San -- ctus, San -- ctus,
          Do -- mi -- nus De -- us Sab -- ba -- oth
          }
      }
    >>
  >>
  \layout {
    ragged-last = ##f
  }
  \midi {}
}