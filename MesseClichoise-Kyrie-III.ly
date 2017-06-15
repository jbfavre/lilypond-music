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
    \repeat volta 2 { f8 (g) aes (bes) c4 c c8 (bes16 aes) bes4 c2\fermata } | \break
    \mark \default
    \repeat volta 2 { c4 (des) c4. bes8 aes (g) aes (bes) g2\fermata } | \break
    \mark \default
    \repeat volta 2 { f8 (g) aes (bes) c4 c c8 (bes16 aes) g8 (aes) f2\fermata }
  }
soloLyrics = \lyricmode {
    Ky -- ri -- e E -- le -- i -- son
    Chri -- ste E -- le -- i -- son
    Ky -- ri -- e E -- le -- i -- son
  }
womenMusic = \relative c' {
    f4 ees f2 f4 g8 f8 g2\fermata
    aes2 aes4. g8 f4. g8 f4 (ees)\fermata
    c'8 (bes) aes8 (bes16 g16) aes8 (f) d (g) c, (e) d (e) c2\fermata
  }
womenLyrics = \lyricmode {
    Ky -- ri -- e E -- le -- i -- son
    Chri -- ste E -- le -- i -- son
    Ky -- ri -- e E -- le -- i -- son
  }
menMusic = \relative c {
    c2 (des) d4 (f) e2\fermata
    f2 (ees d) des2\fermata
    aes4. aes8 des4 f bes,8 c16 des16 c8 bes8 aes2\fermata
  }
menLyrics = \lyricmode {
    Ky -- ri -- e
    Chri -- ste
    Ky -- ri -- e E -- le -- i -- son
  }

\markup { \vspace #1 }
\score {
  \header {
    piece = "Kyrie III pour soliste et chœur à 2 voix, ou chœur à 3 voix"
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
  \layout { }
  \midi { \tempo 4 = 75 }
}