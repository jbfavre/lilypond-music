\version "2.18.2"
\include "gregorian.ly"

% Beginning layout directives
\paper {
  paper-width = 21.0\cm
  paper-height = 29.7\cm
  left-margin = 1.5\cm
  right-margin = 1.5\cm
  top-margin = 2\cm
  bottom-margin = 2\cm
  print-all-headers = true
  max-systems-per-page = 4
}

setStaffElements = {
  \override Staff.BarLine #'hair-thickness = #1
  \override Staff.BarLine #'thick-thickness = #5
  \override Staff.MultiMeasureRest #'font-size = #-1.5
}
% End of layout directives

% Beginning specific piece directives
\header {
  title = "Petite messe"
  subtitle = "Pour soliste et chœur à 2 voix, ou chœur à 3 voix"
  composer = \markup { \vspace #2 "Jean Baptiste Favre" \vspace #1 }
  arranger = "juin 2017"
  tagline = ##f
}

global = {
  \key e \major
  \time 3/8
}

"|" = \bar "||"
"`" = \divisioMinima

soloMusic = \relative c' {
  \tempo 4. = 50
  b'4 b8 cis4 b8 b (a gis) fis4. `
  e8 fis gis a (gis) e e4 fis8 gis4.
}
soloLyrics = \lyricmode {
  San -- ctus, San -- ctus, San -- ctus,
  Do -- mi -- nus De -- us Sab -- ba -- oth
}

womenMusic = \relative c' {
  gis'8 (fis) gis e4 e8 dis8 (cis4) dis4.
  a8 
  %b'8 a b cis a cis b (a16 gis16) a8 b4.
  }
womenLyrics = \lyricmode {
  San -- ctus, San -- ctus, San -- ctus,
  Do -- mi -- nus De -- us Sab -- ba -- oth
  }

menMusic = \relative c {
  e4 e8 a4 gis8 fis (e ais) b4.
  cis,8 b8 a gis dis' e a, b4 <e \parenthesize e,>4.
  }
menLyrics = \lyricmode {
  San -- ctus, San -- ctus, San -- ctus,
  Do -- mi -- nus De -- us Sab -- ba -- oth
  }

\book {
  \markup { \vspace #1 }
  \score {
    \header {
      piece = \markup { \fontsize #4 \bold "Sanctus" }
    }
    \new GrandStaff <<
      \new Staff \with {
        instrumentName = \markup \column { "Soliste" }
      } <<
        \setStaffElements
        \global \clef treble
        \new Voice = "soliste" {
          \soloMusic
        }
        \new Lyrics \lyricsto "soliste" {
          \soloLyrics
        }
      >>
      \new ChoirStaff \with {
        instrumentName = \markup {\left-align "Chœur"}
      } <<
        \new Staff \with {
          instrumentName = \markup {\right-align "voix 1"}
        } {
          \setStaffElements
          \global \clef treble
          \new Voice = "femmes" {
            \womenMusic
          }
        }
        \new Lyrics \lyricsto "femmes" {
          \womenLyrics
        }
        \new Staff \with {
          instrumentName = \markup {\right-align "voix 2"}
        } {
          \setStaffElements
          \global \clef bass
          \new Voice = "hommes" {
            \menMusic
          }
        }
        \new Lyrics \lyricsto "hommes" {
          \menLyrics
        }
      >>
    >>
    \layout {
      ragged-last = ##f
      \context {
        \Staff
          \omit TimeSignature
      }
      \context {
        \Score
          defaultBarType = "" 
      }
    }
    \midi { }
  }
}