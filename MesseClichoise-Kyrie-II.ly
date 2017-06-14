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
  \key d \minor
  \time 2/4
}
soloMusic = \relative c' {
    \mark \default
    \repeat volta 2 { d8 (e) f (g) a4 a a8 (g16 f) g4 a2 } | \break
    \mark \default
    \repeat volta 2 { a4 c4 bes4 g4 f8 (e) f g e2 } | \break
    \mark \default
    \repeat volta 2 { d8 (e) f (g) a4 a a8 (g16 f) e8 (f) d2 }
  }
soloLyrics = \lyricmode {
    Ky -- ri -- e E -- le -- i -- son
    Chri -- ste Chri -- ste E -- le -- i -- son
    Ky -- ri -- e E -- le -- i -- son
  }
womenMusic = \relative c'' {
    a4. g8 f4 f g4. bes8 c2
    d4 a g (e) f g a2
    d4 c bes a g e a2
  }
womenLyrics = \lyricmode {
    Ky -- ri -- e E -- le -- i -- son
    Chri -- ste E -- le -- i -- son
    Ky -- ri -- e E -- le -- i -- son
  }
menMusic = \relative c {
    f4. e8 c4 c bes4. bes8 a2
    f' e d cis
    d4 f g f g a f2
  }
menLyrics = \lyricmode {
    Ky -- ri -- e E -- le -- i -- son
    Chri -- ste Chri -- ste
    Ky -- ri -- e E -- le -- i -- son
  }

\markup { \vspace #1 }
\score{
  \header {
    piece = "Kyrie II pour soliste et chœur à 2 voix, ou chœur à 3 voix"
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
        instrumentName = \markup {\right-align "1"}
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
        instrumentName = \markup {\right-align "2"}
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
