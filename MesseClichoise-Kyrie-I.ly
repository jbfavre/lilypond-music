\version "2.18.2"

\header {
  title = "Messe Clichoise"
  composer = "Jean Baptiste Favre"
  arranger = "Clichy - 2017"
  tagline = ##f
}

setStaffElements = {
  \override Staff.BarLine #'hair-thickness = #1
  \override Staff.BarLine #'thick-thickness = #5
  \override Staff.MultiMeasureRest #'font-size = #-1.5
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

global = {
  \key f \minor
  \time 2/4
}
soloMusic = \relative c' {
    \mark \default
    \repeat volta 2 { f8 g aes4 aes8 bes c4 bes8 (aes) g g f2\fermata } | \break
    \mark \default
    \repeat volta 2 { c'4 c  aes aes  bes8 (aes) g  f g2\fermata } | \break
    \mark \default
    \repeat volta 2 { f8 g aes4 aes8 bes c4 bes8 (aes) g g a2\fermata }
  }
soloLyrics = \lyricmode {
    Ky -- ri -- e Ky -- ri -- e E -- le -- i -- son
    Chri -- ste Chri -- ste E -- le -- i -- son
    Ky -- ri -- e Ky -- ri -- e E -- le -- i -- son
  }
womenMusic = \relative c' {
    f'8   ees d4 des aes8 (bes) c des bes ees f2
    f8 (ees d4) des  f,8 (aes) bes (d) f (d) e2
    f8   ees d4 des8 des aes bes c (f,) bes (ees) c2
  }
womenLyrics = \lyricmode {
    Ky -- ri -- e Ky -- ri -- e E -- le -- i -- son
    Chri -- ste E -- le -- i -- son
    Ky -- ri -- e Ky -- ri -- e E -- le -- i -- son
  }
menMusic = \relative c {
    f4 f4 ees ees c c f2
    aes4 bes f (des8 ees) bes4 b4 c2
    f8 (g) f ees des (c) des ees f (des) ees c f2
  }
menLyrics = \lyricmode {
    Ky -- ri -- e E -- le -- i -- son
    Chri -- ste E -- le -- i -- son
    Ky -- ri -- e Ky -- ri -- e E -- le -- i -- son
  }

\markup { \vspace #1 }
\score {
  \header {
    piece = "Kyrie I pour soliste et chœur à 2 voix, ou chœur à 3 voix"
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
      instrumentName = \markup {\right-align "Chœur"}
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
  \layout { }
  \midi { \tempo 4 = 90 }
}
